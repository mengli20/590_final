% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/smtsensorsumm.R
\name{smtsensorsumm}
\alias{smtsensorsumm}
\title{Soil moisture and temp sensor summary statistics (Moisture)}
\usage{
smtsensorsumm(df, sensornames, startdate, enddate)
}
\arguments{
\item{df}{A csv file from soil moisture/temp sensors}

\item{sensornames}{Vector of the names of the sensors used in the order they appear on the csv}

\item{startdate}{Beginning of date range of interest (format: "y-m-d")}

\item{enddate}{End of date range of interest (format: "y-m-d")}
}
\value{
Soil moisture summary statistics for the entered range of dates
}
\description{
Soil moisture and temp sensor summary statistics (Moisture)
}
\details{
This function takes data from Decagon 5TM soil/moisture sensors and returns the max, min, and mean soil moisture for the time period requested
}
\examples{
smtsensorsumm(dfsensor, sensornameg, "2015-08-10", "2015-08-20")
}
