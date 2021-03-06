% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/TTS2016R-package.R
\docType{data}
\name{od_ft_tt}
\alias{od_ft_tt}
\title{od_ft_tt}
\format{
A dataframe containing 103076 rows and 4 variables; each row represents a unique trip from origin TAZ to destination TAZ with associated features.
\describe{
\item{Origin}{The unique ID of the origin traffic analysis zone (TAZ).}
\item{Destination}{The unique ID of the destination traffic analysis zone (TAZ).}
\item{Persons}{The number of people making this trip.}
\item{travel_time}{The car travel time from origin to destination assuming a 7:00 am departure from and to the TAZ centroids on Oct. 20 2021.}
}
}
\source{
"2016 Transportation Tomorrow Survey" from the \href{http://dmg.utoronto.ca/transportation-tomorrow-survey/tts-introduction}{Data Management Group} accessed November 14 2021. Travel times calculated using \href{https://github.com/ipeaGIT/r5r}{\code{r5r}}
}
\usage{
data(od_ft_tt)
}
\description{
This object contains the trips made from origin (TAZ) to destination (TAZ) by full-time workers to work destinations; it is sourced from the 2016 Transportation Tomorrow Survey (TTS) in the Greater Golden Horseshoe (GGH) area. Also contained within is the calculated car travel time for each trip assuming a 7:00 am departure from the centroid of the TAZ on Oct. 20 2021.
}
\keyword{(GGH)}
\keyword{2016}
\keyword{Destination}
\keyword{Golden}
\keyword{Greater}
\keyword{Horseshoe}
\keyword{Jobs}
\keyword{Origin}
\keyword{TTS}
\keyword{Trips}
\keyword{Workers}
\keyword{area.}
\keyword{in}
\keyword{the}
