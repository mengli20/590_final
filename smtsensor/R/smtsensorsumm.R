
#' Soil moisture and temp sensor summary statistics (Moisture)
#'
#' @param df A csv file from soil moisture/temp sensors
#' @param sensornames Vector of the names of the sensors used in the order they appear on the csv
#' @param startdate Beginning of date range of interest (format: "y-m-d")
#' @param enddate End of date range of interest (format: "y-m-d")
#' @return Soil moisture summary statistics for the entered range of dates
#' @details This function takes data from Decagon 5TM soil/moisture sensors and returns the max, min, and mean soil moisture for the time period requested
#' @export
#' @examples
#' smtsensorsumm(dfsensor, sensornameg, "2015-08-10", "2015-08-20")

smtsensorsumm <- function(df, sensornames, startdate, enddate) {

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

  #Filter the date range and select the moisture columns:
  df_4<- df_3 %>%
    dplyr::filter (datetime >= as.POSIXct(startdate) & datetime <= as.POSIXct(enddate)) %>%
    dplyr::select (3,5,7,9) %>%
    dplyr::gather (sensor, moisture) %>%  #make wide df long
    dplyr::group_by(sensor) %>%
    dplyr::summarise(max_moisture= max(moisture), min_moisture = min(moisture), mean_moisture = mean(moisture))
  return(df_4)

}
