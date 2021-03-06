% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/smtsensorplotm.R
\name{smtsensorplotm}
\alias{smtsensorplotm}
\title{Soil moisture and temp sensor plot (Moisture)}
\usage{
smtsensorplotm(df, sensornames, startdate, enddate)
}
\arguments{
\item{df}{A csv file from soil moisture/temp sensors}

\item{sensornames}{Vector of the names of the sensors used in the order they appear on the csv}

\item{startdate}{Beginning of date range of interest (format: "y-m-d")}

\item{enddate}{End of date range of interest (format: "y-m-d")}
}
\value{
Plot (a summary of the data for the entered range of dates)
}
\description{
Soil moisture and temp sensor plot (Moisture)
}
\details{
This function takes data from Decagon 5TM soil/moisture sensors and returns a plot of the soil moisture data for the time period requested
}
\examples{
smtsensorplotm(dfsensor, sensornameg, "2015-08-10", "2015-08-20")
}
