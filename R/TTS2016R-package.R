#' @keywords internal
"_PACKAGE"

# The following block is used by usethis to automatically manage
# roxygen namespace tags. Modify with care!
## usethis namespace: start
## usethis namespace: end
NULL

#' TTS2016R
#'
#' A data package which consists of objects sourced from the
#' [2016 Transportation Tomorrow Survey (TTS)](http://dmg.utoronto.ca/transportation-tomorrow-survey/tts-introduction)
#' or are curated to facilitate the use and analysis of TTS data. This package includes worker-to-jobs origin
#' -destinations and traffic analysis zone (TAZ) boundaries for the Greater Golden Horse area (GGH) located in
#' southern Ontario, Canada. The package also includes associated spatial boundary files.
#'
#' @docType package
#' @name TTS2016R-package
#' @author Antonio Paez, School of Earth, Environment and Society, McMaster University \email{paezha@@mcmaster.ca}
#' @author Anastasia Soukhov, School of Earth, Environment and Society, McMaster University \email{soukhoa@@mcmaster.ca}
#' @references \url{https://github.com/soukhova/TTS2016R}
NULL



#' census metropolitan area (CMA)/census agglomeration (CA) boundaries in the Greater Golden Horseshoe (GGH) area and associated data.
#'
#' This object contains the census metropolitan area (CMA)/census agglomeration (CA) for the spatial region  associated with the 2016 Transportation Tomorrow Survey (TTS) in the Greater Golden Horseshoe (GGH) area.
#'
#' @format A simple feature class (sf) polygon object containing 16 rows and 4 variables; each row represents a unique census metropolitan area (CMA) of census agglomeration (CA) with associated geo-referenced geometry. CMA and CA consist of one or more adjacent municipalities around a core. The CMA/CA boundaries are defined for the purpose of the Canadian Census based on population. As such, the core of each CMA must have a population of at least 50,000 and the entire CMA must have a population of at least 100,000. CA are smaller in population, thir course must have a population of at least 10,000.
#' \describe{
#'   \item{CMAUID}{A unique identifier for each census metropolitan area (CMA)/census agglomeration (CA).}
#'   \item{CMANAME}{The name of the census metropolitan area (CMA)/census agglomeration (CA).}
#'   \item{CMATYPE}{A one character field indicating whether the unit is a census metropolitan area, a tracted census agglomeration or a non-tracted census agglomeration. "B" is a CMA and "D" is a CA with no census tracts, and "K" is a CA with census tracts.}
#'   \item{geometry}{The sfc polygon geometry (boundaries).}
#'}
#' @docType data
#' @keywords planning districts regions municipalities boundary
#' @name ggh_cma
#' @usage data(ggh_cma)
#' @source "The 2016 census metropolitan areas and census agglomeration boundary files as created by the Canadian Census available [here](https://www12.statcan.gc.ca/census-recensement/2011/geo/bound-limit/bound-limit-2016-eng.cfm) accessed October 21st 2022 (Boundary Files, 2016 Census. Statistics Canada Catalogue no. 92-160-X.). All variable definitions are based on the definitions included in the census year 2016 boundary file reference guide (Boundary Files, Reference Guide, Second edition, 2016 Census. Statistics Canada Catalogue no. 92-160-G.).
"ggh_cma"

#' Planning boundaries in the Greater Golden Horseshoe (GGH) area and associated data.
#'
#' This object contains the planning boundaries (PB) associated with the 2016 Transportation Tomorrow Survey (TTS) in the Greater Golden Horseshoe (GGH) area.
#'
#' @format A simple feature class (sf) polygon object containing 105 rows and 5 variables; each row represents a unique planning region with associated geo-referenced geometry.
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
#' @source "2016 Transportation Tomorrow Survey" from the [Data Management Group](http://dmg.utoronto.ca/survey-boundary-files) accessed February 28th 2022.
"ggh_pd"

#' Traffic analysis zones boundaries in the Greater Golden Horseshoe (GGH) area and associated data.
#'
#' This object contains traffic analysis zones (TAZ) sourced from the 2016 Transportation Tomorrow Survey (TTS) in the Greater Golden Horseshoe (GGH) area.
#'
#' @format A simple feature class (sf) polygon object containing 3764 rows and 10 variables; each row represents a unique TAZ with associated features.
#' \describe{
#'   \item{GTA06}{Unique ID of the traffic analysis zone (TAZ).}
#'   \item{AREA}{Area of TAZ in units of km^2.}
#'   \item{REGION}{Retrieved from the ggh_pd object. It is a unique ID corresponding with the greater region that each planning district (PD) is part of so filtering and analysis, by PD, is simplified.}
#'   \item{CMAUID}{Retrieved from the ggh_cma object. It is a unique identifier for each census metropolitan area (CMA)/census agglomeration (CA). Within, filtering and analysis that can be easily linked to the census data, is simplified.}
#'   \item{workers}{The number of full-time workers in the TAZ.}
#'   \item{jobs}{The number of full-time workers who declare their typical place of employment in the TAZ. }
#'   \item{LTGO_split}{The percentage of full-time work related trips made from that origin to that destination using local transit and/or GO transit (regional transit) as a primary mode.}
#'   \item{W_split}{The percentage of full-time work related trips made from that origin to that destination using a bicyle as a primary mode.}
#'   \item{BC_split}{The percentage of full-time work related trips made from that origin to that destination by walking as a primary mode.}
#'   \item{geometry}{The sfc polygon geometry (boundaries) of the TAZ.}
#'}
#' @docType data
#' @keywords Jobs Workers TTS 2016 in the Greater Golden Horseshoe (GGH) area.
#' @name ggh_taz
#' @usage data(ggh_taz)
#' @source "2016 Transportation Tomorrow Survey" from [Data Management Group](http://dmg.utoronto.ca/transportation-tomorrow-survey/tts-introduction) accessed November 14 2021.
"ggh_taz"

#' An origin and destination table of workers, place of employment, trip counts, and estimated travel times.
#'
#' This object contains the trips made from origin (TAZ) to destination (TAZ) by full-time workers to work destinations; it is sourced from the 2016 Transportation Tomorrow Survey (TTS) in the Greater Golden Horseshoe (GGH) area. Also contained within is the calculated car travel time for each trip calculated using TAZ centroids and r5r in October 2021.
#'
#' @format A dataframe containing 103076 rows and 17 variables; each row represents a unique trip from origin TAZ to destination TAZ with associated features.
#' \describe{
#'   \item{Origin}{The unique ID of the origin traffic analysis zone (TAZ). It is equivalent to the IDs used in 'GTA06'.}
#'   \item{Destination}{The unique ID of the destination traffic analysis zone (TAZ). It is equivalent to the IDs used in 'GTA06'.}
#'   \item{Persons}{The number of full-time workers at the origin who work at the destination.}
#'   \item{T_LT}{The number of work-related trips taken from the origin to the destination by local transit excluding GO transit (regional transit service) as a primary mode.}
#'   \item{T_LTGO}{The number of work-related trips taken from the origin to the destination by local transit and GO transit (regional transit service) as a primary mode.}
#'   \item{T_GO}{The number of work-related trips taken from the origin to the destination by GO transit (regional transit service as a primary mode.}
#'   \item{BC}{The number of work-related trips taken from the origin to the destination by bicyle (primary mode).}
#'   \item{W}{The number of work-related trips taken from the origin to the destination by walking (primary mode).}
#'   \item{C_DPC}{The number of work-related trips taken from the origin to the destination as a driver of a private car (primary mode).}
#'   \item{C_PPC}{The number of work-related trips taken from the origin to the destination as a passenger of a private car (primary mode).}
#'   \item{C_TA}{The number of work-related trips taken from the origin to the destination by a taxi (primary mode).}
#'   \item{C_RS}{The number of work-related trips taken from the origin to the destination by a paid ride-share  (primary mode).}
#'   \item{C_SB}{The number of work-related trips taken from the origin to the destination by a school bus (primary mode).}
#'   \item{M}{The number of work-related trips taken from the origin to the destination by a motorcycle (primary mode).}
#'   \item{O}{The number of work-related trips taken from the origin to the destination by another mode (primary mode).}
#'   \item{sum_trips}{The total number of work-related trips taken from the origin to the destination by all modes.}
#'   \item{travel_time}{The car travel time from origin to destination assuming a 7:00 am departure from and to the TAZ centroids on Oct. 20 2021.}
#'}
#' @docType data
#' @keywords Origin Destination Trips Jobs Workers TTS 2016 in the Greater Golden Horseshoe (GGH) area.
#' @name od
#' @usage data(od)
#' @source "2016 Transportation Tomorrow Survey" from the [Data Management Group](http://dmg.utoronto.ca/transportation-tomorrow-survey/tts-introduction) accessed November 14 2021.
#' @source Travel times calculated using [`r5r`](https://github.com/ipeaGIT/r5r)
"od"

#' Household socio-economic and demographic attributes by TAZ in the Greater Golden Horseshoe (GGH).
#'
#' This object contains socio-economic and demographic information at the level of traffic analysis zones (TAZ) sourced from the 2016 Transportation Tomorrow Survey (TTS) in the Greater Golden Horseshoe (GGH) area.
#' The query to retrieve data for income was a cross tabulation of the Person table; the Row was 2006 GTA zone of household - gta06_hhld, and the column was Income range of household - income.
#' The income reported is the total  for the household from all sources, before income tax, in the year before the survey.
#' According to the TTS Data Guide "The question was voluntary and subject to high levels of non-response. The results of this question should be interpreted with caution."
#'
#' @format A data frame containing 3128 rows and 8 variables; each row represents a unique TAZ with associated features.
#' \describe{
#'   \item{GTA06}{Unique ID of the traffic analysis zone (TAZ).}
#'   \item{$0 to $14999}{Number of households in TAZ in this income range. }
#'   \item{$15000 to $39999}{Number of households in TAZ in this income range.}
#'   \item{$40000 to $59999}{Number of households in TAZ in this income range.}
#'   \item{$60000 to $99999}{Number of households in TAZ in this income range.}
#'   \item{$100000 to $124999}{Number of households in TAZ in this income range. }
#'   \item{$125000 and above}{TNumber of households in TAZ in this income range.}
#'   \item{Decline / do not know}{Number of households in TAZ who reportet unknown or did not state their income range.}
#'}
#' @docType data
#' @keywords Jobs Workers TTS 2016 in the Greater Golden Horseshoe (GGH) area.
#' @name ggh_taz
#' @usage data(ggh_taz)
#' @source "2016 Transportation Tomorrow Survey" from [Data Management Group](http://dmg.utoronto.ca/transportation-tomorrow-survey/tts-introduction) accessed November 14 2021.
"hh_sed_taz"
