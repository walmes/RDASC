#' @name mf_aa_ecs_psfl
#' 
#' @title Determination of the \emph{Monilinia fructicola} and 
#' \emph{Alternaria alternata} sensitivity to DMI and SDHI  
#' fungicides using conventional and Spline regression.
#' 
#' @description the study includes 2 tables including the colony      
#' diameter measurement performed in Petri plates amended with      
#' fungicides used to determine the pathogen sensitivity.
#'
#' @format the \code{lichtem_epidemioR$mf_dmi} stands for  
#' \emph{Monilinia fructicola} and demethylation inhibitor fungicides
#' \code{data.frame} contains 1728 observations and 7 variables (columns). 
#' In this experiment 12 isolates (6 G641S mutants and 6 wild-type) were  
#' cultured onto acidified PDA (APDA) amended with seven fungicide dosages 
#' and its control (no fungicide). After five days colony was measured in 
#' two directions and registered as diameter 1 and diameter 2. 
#' mycelial plug of 4 mm was used. Experiment was performed 2 times.
#' 
#' @objective (1) Determine the Effective dosage to inhibit 50% of 
#' colony growth.   
#'
#' \describe{
#'
#' \item{\code{eva}}{integer variable for evaluation or experiment replication.}
#'
#' \item{\code{iso}}{character variable for isolate. In total, twelve isolates
#' were used, six G641S mutant (m1,...,m6) and six wild-type (w1,...,w6).}
#'
#' \item{\code{fun}}{integer variable for fungicide. In total, 4 DMI fungicides 
#' were used, myclobutanil, propiconazole, prothioconazole and tebuconazole.}
#'
#' \item{\code{rep}}{integer variable for plate repetition. repetitions alternate 
#' between 2 and 1 plates, starting on dose 0 (2 plates),0.001 (2 plates), 
#' 0.005 (1 plate), 0.025 (2 plates), ... , 15.625 (1 plate)}
#'
#' \item{\code{dos}}{numerical variable for dose. In total, eight dosages were used
#' 0 as control, 0.001, 0.005, 0.025, 0.125, 0.625, 3.125 and 15,625 ug/ml.}
#' 
#' \item{\code{d1}}{numeric variable for colony diameter 1 (mm). The measurement
#' 1 was taken from one perpendicular colony diameters and recorded in mm.
#' mycelial plug of 4mm was used as inoculum and were not subtracted. values were 
#' recorded without decimal pontuation and should be divided by 100 to be placed in 
#' scale.}
#' 
#' \item{\code{d2}}{numeric variable for colony diameter 2 (mm). The measurement
#' 2 was taken from one perpendicular colony diameters and recorded in mm.
#' mycelial plug of 4mm was used as inoculum and were not subtracted. values were 
#' recorded without decimal pontuation and should be divided by 100 to be placed in 
#' scale.}
#'
#' }
#'
#'#' @format the \code{lichtem_epidemioR$aa_sdhi} stands for  
#' \emph{Alternaria alternata} and succinate dehyrogenase fungicide 
#' inhibitors. \code{data.frame} contains 672 observations and 7 variables 
#' (columns). In this experiment 12 isolates were cultured onto Yeast Bacto
#'  Agar (YBA) amended with 8 fungicide dosages 
#' and its control (no fungicide). After seven days colony was measured in 
#' two directions and registered as diameter 1 and diameter 2. 
#' mycelial plug of 5 mm was used. Experiment was performed once.
#' 
#' @objective (1) Determine the Effective dosage to inhibit 50% of 
#' colony growth.   
#'
#' \describe{
#'
#' \item{\code{eva}}{integer variable for evaluation or experiment replication.}
#'
#' \item{\code{iso}}{character variable for isolate. In total, twelve isolates
#' were used, from 1 to 12.}
#'
#' \item{\code{fun}}{integer variable for fungicide. In total, 4 SDHI fungicides 
#' were used, boscalid, fluopyram, fluxapyroxad, penthiopyrad.}
#'
#' \item{\code{rep}}{integer variable for plate repetition. repetitions alternate 
#' between 2 and 1 plates, starting on dose 0 (2 plates),0.01 (2 plates), 
#' 0.05 (1 plate), 0.1 (2 plates), ... , 100 (1 plate)}
#'
#' \item{\code{dos}}{numerical variable for dose. In total, nine dosages were used
#' 0 as control, 0.01, 0.05, 0.1, 0.5, 1, 10, 50 and 100 ug/ml.}
#' 
#' \item{\code{d1}}{numeric variable for colony diameter 1 (mm). The measurement
#' 1 was taken from one perpendicular colony diameters and recorded in mm.
#' mycelial plug of 5mm was used as inoculum and were not subtracted. values were 
#' recorded without decimal pontuation and should be divided by 100 to be placed in 
#' scale.}
#' 
#' \item{\code{d2}}{numeric variable for colony diameter 2 (mm). The measurement
#' 2 was taken from one perpendicular colony diameters and recorded in mm.
#' mycelial plug of 5mm was used as inoculum and were not subtracted. values were 
#' recorded without decimal pontuation and should be divided by 100 to be placed in 
#' scale.}
#'
#' }
#'
#' @source Paulo S.F. Lichtemberg (\email{plichtemberg@@ucdavis.edu}),       
#'         Larissa May De Mio (\email{maydemio@@ufpr.br}),
#'         Walmes M. Zeviani (\email{walmes@@ufpr.br}).
#'
#' @examples
#'
#'
NULL