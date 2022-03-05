#' @keywords internal
"_PACKAGE"

# The following block is used by usethis to automatically manage
# roxygen namespace tags. Modify with care!
## usethis namespace: start
## usethis namespace: end
NULL

#' TTS2016R: A data package which currently consists of three objects which are sourced from the [2016
#' Transportation Tomorrow Survey (TTS)](http://dmg.utoronto.ca/transportation-tomorrow-survey/tts-introduction)
#' or are curated to facilitate the use and analysis of TTS data. This package includes person-to-jobs origin
#' -destinations and traffic analysis zone (TAZ) boundaries for the Greater Golden Horse area (GGH) located in
#' southern Ontario, Canada. The package also includes boundary files for all municipalities included in the GGH
#' area sourced from various municipal open data portals.
#'
#' @docType package
#' @name TTS2016R-package
#' @author Antonio Paez, School of Earth, Environment and Society, McMaster University \email{paezha@@mcmaster.ca}
#' @author Anastasia Soukhov, School of Earth, Environment and Society, McMaster University \email{soukhoa@@mcmaster.ca}
#' @references \url{https://github.com/soukhova/TTS2016R}
NULL

#' ggh_taz
#'
#' This object contains traffic analysis zones (TAZ) sourced from the 2016 Transportation Tomorrow Survey (TTS) in the Greater Golden Horseshoe (GGH) area.
#'
#' @format A simple feature class (sf) polygon object containing 3764 rows and 5 variables; each row represents a unique TAZ with associated features.
#' \describe{
#'   \item{GTA06}{Unique ID of the traffic analysis zone (TAZ).}
#'   \item{AREA}{Area of TAZ in units of km^2.}
#'   \item{workers}{The number of full-time workers within each TAZ.}
#'   \item{jobs}{The number of jobs within each TAZd. }
#'   \item{geometry}{The sfc polygon geometry (boundaries) of the TAZ.}
#'}
#' @docType data
#' @keywords Jobs Workers TTS 2016 in the Greater Golden Horseshoe (GGH) area.
#' @name ggh_taz
#' @usage data(ggh_taz)
#' @source "2016 Transportation Tomorrow Survey" from [Data Management Group](http://dmg.utoronto.ca/transportation-tomorrow-survey/tts-introduction) accessed November 14 2021.
"ggh_taz"

#' od_ft_tt
#'
#' This object contains the trips made from origin (TAZ) to destination (TAZ) by full-time workers to work destinations; it is sourced from the 2016 Transportation Tomorrow Survey (TTS) in the Greater Golden Horseshoe (GGH) area. Also contained within is the calculated car travel time for each trip assuming a 7:00 am departure from the centroid of the TAZ on Oct. 20 2021.
#'
#' @format A dataframe containing 103076 rows and 4 variables; each row represents a unique trip from origin TAZ to destination TAZ with associated features.
#' \describe{
#'   \item{Origin}{The unique ID of the origin traffic analysis zone (TAZ).}
#'   \item{Destination}{The unique ID of the destination traffic analysis zone (TAZ).}
#'   \item{Persons}{The number of people making this trip.}
#'   \item{travel_time}{The car travel time from origin to destination assuming a 7:00 am departure from and to the TAZ centroids on Oct. 20 2021.}
#'}
#' @docType data
#' @keywords Origin Destination Trips Jobs Workers TTS 2016 in the Greater Golden Horseshoe (GGH) area.
#' @name od_ft_tt
#' @usage data(od_ft_tt)
#' @source "2016 Transportation Tomorrow Survey" from the [Data Management Group](http://dmg.utoronto.ca/transportation-tomorrow-survey/tts-introduction) accessed November 14 2021. Travel times calculated using [`r5r`](https://github.com/ipeaGIT/r5r)
"od_ft_tt"

#' ggh_pd
#'
#' This object contains the  municipality boundaries associated with the 2016 Transportation Tomorrow Survey (TTS) in the Greater Golden Horseshoe (GGH) area.
#'
#' @format A dataframe containing 105 rows and 4 variables; each row represents a unique planning region with associated geo-referenced geometry.
#' \describe{
#'   \item{MUN}{The name of the municipality and/or planning boundary.}
#'   \item{PD}{A unique ID.}
#'   \item{REGION}{A unique ID corresponding with the greater region that each PD is part of.}
#'   \item{REGION_name}{Names of regions corresponding to the REGION ID.}
#'   \item{geometry}{The sfc polygon geometry (boundaries).}
#'}
#' @docType data
#' @keywords planning districts regions municipalities boundary
#' @name ggh_pd
#' @usage data(ggh_pd)
#' @source "2016 Transportation Tomorrow Survey" from the [Data Management Group](http://dmg.utoronto.ca/survey-boundary-files) accessed Feburary 28th 2022.
"ggh_pd"

#' toy_od_table
#'
#' This object contains a hypothetical toy example of Population, Jobs, Distance, and Catchment for each Origin-Destination trip. Randomly generated.

#' @format A dataframe containing 27 rows and 7 variables; each row represents a unique trip from "Population" to "Employment Center" with associated features.
#' \describe{
#'   \item{Origin}{The unique ID for each "Population" from 1 to 9 }
#'   \item{Destination}{The unique ID for each "Employment Center" from 1 to 3}
#'   \item{Population}{The population corresponding to the "Population" ID.}
#'   \item{Jobs}{The number of jobs corresponding to the "Employment Center" ID.}
#'   \item{distance}{The distance between origin to destination (unitless).}
#'   \item{catchments}{A binary code indicating if the origin-destination trip is eligible or not (details on how this can be used within the vignette).}
#'   \item{trips}{Randomly generated number of trips made from origin to destination.}
#'}
#' @docType data
#' @keywords Origin Destination Trips Jobs Workers Toy
#' @name toy_od_table
#' @usage data(toy_od_table)
"toy_od_table"

#' toy_sim_zones
#'
#' This object contains the geometries of the hypothetical toy example Origin and Destination trip zones. Randomly generated.

#' @format A simple feature class (sfc) multipolygon object containing 12 rows and 5 variables; each row represents a unique "Population" or "Employment Center" zone with associated features.
#' \describe{
#'   \item{id}{The unique ID for each "Population" (from 1 to 9) or "Employment Center" (from 1 to 3) }
#'   \item{id_short}{A short unique ID}
#'   \item{number}{The population corresponding to the ID.}
#'   \item{type}{The number of jobs corresponding the ID.}
#'   \item{geometry}{The sfc polygon geometry (boundaries) of each ID.}
#'}
#' @docType data
#' @keywords Origin Destination Jobs Workers Toy
#' @name toy_sim_zones
#' @usage data(toy_sim_zones)
"toy_sim_zones"
