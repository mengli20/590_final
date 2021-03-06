
#' Soil moisture and temp sensor summary statistics (Temperature)
#'
#' @param df A csv file from soil moisture/temp sensors
#' @param sensornames Vector of the names of the sensors used in the order they appear on the csv
#' @param startdate Beginning of date range of interest (format: "y-m-d")
#' @param enddate End of date range of interest (format: "y-m-d")
#' @return Temperature summary statistics for the entered range of dates
#' @details This function takes data from Decagon 5TM soil/moisture sensors and returns the max, min, and mean temperature for the time period requested
#' @export
#' @examples
#' smtsensorsumt(dfsensor, sensornameg, "2015-08-10", "2015-08-20")

smtsensorsumt <- function(df, sensornames, startdate, enddate) {

  #Ensure that input is a dataframe or a warning is issued
  if (is.data.frame(df) == FALSE) {
    warning ("Input is not a dataframe")}

  #Lubridate converts dates as characters to POSIXct from the given df:
  datetime<- lubridate::dmy_hm(df[[1]], tz= "EST")

  #Remove the character dates:
  df_2<- df %>%
    dplyr::select (2:9)

  #Combine parsed dates and new table:
  df_3<- cbind(datetime, df_2)

  #Rename columns
  colnames(df_3)[2:9] <- sensornames

  #Filter the date range and select the temperature columns:
  df_4<- df_3 %>%
    dplyr::filter (datetime >= as.POSIXct(startdate) & datetime <= as.POSIXct(enddate)) %>%
    dplyr::select (2, 4, 6, 8) %>%
    dplyr::gather (sensor, temperature) %>%  #make wide df long
    dplyr::group_by(sensor) %>%
    dplyr::summarise(max_temp= max(temperature), min_temp = min(temperature), mean_temp = mean(temperature)) #data table of stats on the data
  return(df_4)

}





