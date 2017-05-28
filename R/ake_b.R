#' @name ake_b
#' @title Effect of fungicide sprays programs and pistachio hedging on
#'     damage caused by \emph{Alternaria} on commercial pistachio
#'     orchard of Tulare County, California.
#'
#' @description The experiment was established in a commercial pistachio
#'     orchard in Tulare County, California.  The total area sizes 2.9
#'     ha with density of 335 plants/ha. In total, 12 plots were set
#'     with approximately 80 pistachio trees cv. Kerman spaced at 5.8 m
#'     between rows and 5.2 m between plants.  Each plot included four
#'     rows in width.  In the year 2015, a heavy and normal hedging were
#'     intercalated, resulting in 6 plots for each hedging type.  No
#'     hedging was made in 2016.  Within each plot, a fungicide free
#'     sub-plot with 20 plants (4 rows by 5 plants) was set as a
#'     control.  Along the plot central rows, four plants (three inside
#'     the treated plot and one inside the control sub-plot) were
#'     identified for isolate collection, severity and defoliation
#'     assessments.  In total, 48 plants were identified.  The fungicide
#'     treatment included three different programs plus the control.
#'
#' \describe{
#'
#' \item{cnt}{Control with no application.}
#'
#' \item{mer2}{Merivon (1st application) and Switch (2nd application);}
#'
#' \item{fon2}{FontelisTM (1st application) and Switch (2nd
#'     application);}
#'
#' \item{mer3}{Merivon (1st application), Switch (2nd application) and
#'     Gem (third application)}.
#'
#' }
#'
#'     The combination of spray program and hedging type allowed two
#'     replication plots per treatment.
#'
#'     \strong{Fruit quality} - To determine the effect of spray program
#'     and pistachio hedging on fruit quality, each of the 48 flaged
#'     trees had their fruits harvested in mid September.  Fruits were
#'     bagged in plastic and identified to allow the localization of
#'     plot and tree.  Mechanic dehulling was made prior to fruit
#'     drying, which occured during 3 days at temperature of 55
#'     \eqn{^\circ}C.  After drying, fruits were re-placed into an
#'     identified plastic bags and stored at cold room at 4
#'     \eqn{^\circ}C until analyses.  For each one of the 48 bags of
#'     samples, three subsamples were prepared including 100 fruits
#'     randomly choosen.  In order to evaluate the amount of stain
#'     caused by the incidence of \emph{Alternaria} late blight in the
#'     field, each subsample (composed by 100 fruits) were separated in
#'     5 categories, from 0 (no stain) to 4 (more stain), based on a
#'     reference scale.
#'
#'     \strong{Sensitivity} - In order to evaluate the fungicide program
#'     effect on \emph{A. alternata} SDHI sensitivity, four isolate
#'     populations were collected in two years of experiment.
#'
#'     In 2015, the population \strong{A} (\eqn{n = 59}) and \strong{B}
#'     (\eqn{n = 59}) were collected in late-May and mid-September
#'     respectively. In 2016, the population \strong{C} (\eqn{n = 79})
#'     and \strong{D} (\eqn{n = 63}) were collected in early-May and
#'     mid-September respectively.
#'
#'     This arrangement allowed to sample isolates before (\strong{A}
#'     and \strong{C}) and after (\strong{B} and \strong{D}) the spray
#'     season.  To obtain the sensitivity values, three SDHI fungicides
#'     stock solutions were prepared at 10 g a.i. liter-1 each.  The
#'     fungicides used were: technical grade fluopyram-fp (a.i. 99.13\%,
#'     Bayer CropScience) and penthiopyrad-pe (a.i. 99.5\%, DuPont
#'     Company) diluted in acetone; and the commercial product of
#'     fluxapyroxad-fd (Sercadis 300 SC, BASF, The Chemical Company)
#'     diluted in sterile deionized water.
#'
#'     To determine an isolate's sensitivity to fungicides, stock
#'     solution was diluted in autoclaved YBA agar medium at
#'     concentrations of 0 (control), 0.01, 0.03, 0.12, 0.48, 1.92,
#'     7.68, 30.72 and 122.88 \eqn{\mu}g/ml.  For each tested isolate, a
#'     5 mm mycelial plug was transferred from a 7-day-old colony and
#'     placed onto the YBA media supplemented with one of the above
#'     fungicide concentrations. Intercalate number of repetitions were
#'     prepared, where 0 (control), 0.01, 0.12, 1.92, and 30.72
#'     \eqn{\mu}g/ml received two repetitions, and the other doses one.
#'
#'     Plates were incubated in dark for seven days at room temperature
#'     prior to colony measurement, taken from two perpendicular
#'     diameters. For each concentration, the inhibition of colony
#'     growth (\eqn{L_i}) of isolate \eqn{i} was calculated as \eqn{L_i
#'     = (C_{ck}-C_i)/C_{ck}\times 100}, where \eqn{C_{ck}} is the mean
#'     colony diameter of the control with no fungicide, and \eqn{C_i}
#'     is the mean colony diameter of the isolate \eqn{i} on the
#'     supplemented medium.
#'
#' @format A list containing data frames.
#'
#' \code{quality} is a \code{data.frame} with 288 observations and 12
#'     variables, described below.
#'
#' \describe{
#'
#' \item{\code{yr}}{Factor variable to indicate the year of experiment.}
#'
#' \item{\code{hed}}{Factor variable to indicate the hedging type on
#'     trees.  The hedging is the shape the branchs and limbs when
#'     pruned. They can be heavy (severe pruning) or normal (regular
#'     pruning).}
#'
#' \item{\code{tra}}{Factor variable to indicate the fungicide treatment
#'     on field, already described above (\code{cnt}, \code{mer2},
#'     \code{fon2} and \code{mer3}).  The treatment combines the use of
#'     one SDHI fungicide (Merivon or Fontelis) and one or two
#'     additional chemical group.  THe application is on field.}
#'
#' \item{\code{plo}}{Not an important variable to consider in the
#'     analysis.  The plot code simply indicate the location of
#'     experimental plots, they are represented by one number (from 1 to
#'     3) indicating the rows (for example: each number is composed by 4
#'     rows from where the two central rows contain the flagged tree),
#'     and letters (from A to D) indicating the change in hedging.}
#'
#' \item{\code{tre}}{Factor variable to indicate tree from where fruits
#'     were collected.  There are 48 trees identified from 1 to 48, for
#'     2015, and the same identification for 2016 (corresponding to the
#'     same trees sampled one year later).  As an example: plot "1A",
#'     include trees 1, 2, 3 and 4 (1, 2, 3 treated and 4 not treated);
#'     and plot "1B" includes trees 5, 6, 7 and 8 (5, 6, 7 treated and 8
#'     not treated).}
#'
#' \item{\code{rep}}{Integer variable to indicate repetition.  Each
#'     fruit sample obtained from a certain tree was sub-sampled by
#'     randomly choosing 100 fruits.  This subsampling originated 3
#'     repetitions for each tree called subsample 1, 2 and 3.}
#'
#' \item{\code{c0}}{Numeric variable that is the number of fruits at
#'     stain category 0. Category zero are the number of pistachio
#'     fruits with 0\% of the shell surface discolored.}
#'
#' \item{\code{c1}}{Numeric variable that is the number of fruits at
#'     stain category 1. Category one are the number of pistachio fruits
#'     with 1\% to 10\% of the shell surface discolored.}
#'
#' \item{\code{c2}}{Numeric variable that is the number of fruits at
#'     stain category 2. Category two are the number of pistachio fruits
#'     with 11\% to 35\% of the shell surface discolored.}
#'
#' \item{\code{c3}}{Numeric variable that is the number of fruits at
#'     stain category 3. Category three are the number of pistachio
#'     fruits with 36\% to 64\% of the shell surface discolored.}
#'
#' \item{\code{c4}}{Numeric variable that is the number of fruits at
#'     stain category 4. Category four are the number of pistachio
#'     fruits with 65\% to 100\% of the shell surface discolored.}
#'
#' \item{\code{tot}}{Numeric variable that is the total number of fruits
#'    evaluated inside each sub-sample.}
#'
#' }
#'
#' \code{sensitivity} is a \code{data.frame} with 10920 observations and
#'     11 variables, described below.
#'
#' \describe{
#'
#' \item{\code{yr}}{Described before.}
#'
#' \item{\code{hed}}{Described before.}
#'
#' \item{\code{tra}}{Described before.}
#'
#' \item{\code{plot}}{Described before.}
#'
#' \item{\code{pop}}{A 4-level factor variable to indicate the isolate
#'     population collected in 2015, "A" and "B", and 2016, "C" and "D".
#'     Each population was collected before and after the spray season
#'     in field, for this reason they belong to the same location but
#'     the individuals inside the each population are unique, meaning
#'     that isolate number one, tested for the population "A" will never
#'     be tested in a different population.}
#'
#' \item{\code{iso}}{A factor variable to differenciate the isolates
#'     collected during the preparation of populations "A", "B", "C" and
#'     "D". They will never repeat because each isolate is sampled from
#'     the population of isolates only one in the field.  So, this is an
#'     unique ID for isolates.}
#'
#' \item{\code{fun}}{A factor variable to indicate the SDHI fungicide
#'     tested in laboratory.  Each isolate collected in field was tested
#'     \emph{in vitro} for its sensitivity of fluopyram "FP",
#'     fluxapyroxad "FD", and penthiopyrad "PE".  The shift in
#'     sensitivity for "FP", "PE", and "FD" is the information we aimed
#'     to have at the end of this experiment to know, which combination
#'     of \code{tra} and \code{hed} affected more or less the
#'     sensitivity of \code{fun}.}
#'
#' \item{\code{dos}}{A numeric factor variable to indicate the dose of
#'     fungicide prepared inside the petri plate.  Each dose was
#'     prepared by the dilution of fungicide stock solution on YBA
#'     media.  The measure unit for fungicide dose is \eqn{\mu}g/ml.}
#'
#' \item{\code{rep}}{A numeric variable to indicate the repetition of
#'     fungicide dose used to calculate the EC50 (sensitivity) of each
#'     isolate.  The repetitions were intercalate, two and one plate per
#'     dose.  Control received two repetitions as well.}
#'
#' \item{\code{d1}}{A numeric response variable for the first colony
#'     diameter measured in mm.  However the data on the table need to
#'     be divided by 100.  Decimals were ignored to facilitate the
#'     typing of collected data.}
#'
#' \item{\code{d2}}{A numeric response variable for the second colony
#'     diameter measured in mm.  However the data on the table need to
#'     be divided by 100.  Decimals were ignored to facilitate the
#'     typing of collected data.}
#'
#' }
#'
#' \code{severity} is a \code{data.frame} with 192 observations and
#'     8 variables, described below.
#'
#' \describe{
#'
#' \item{\code{yr}}{Described before.}
#'
#' \item{\code{hed}}{Described before.}
#'
#' \item{\code{tra}}{Described before.}
#'
#' \item{\code{plot}}{Described before.}
#'
#' \item{\code{tre}}{Described before.}
#'
#' \item{\code{rep}}{Interger variable to indicate repetition. Each
#'     variable of patogenicity were accessed twice per tree.}
#'
#' \item{\code{inc}}{Ordered categorical variable to indicate
#'     incidence. Its a 1 to 5 subjective scale that means 1 (worst or
#'     high incidence) to 5 (best or low incidence).}
#'
#' \item{\code{def}}{Numeric variable to indicate the tree defoliation.
#'     Defoliation was measured as the number of leaves in the floor at
#'     the east and west side of each plant counted inside a frame of 1
#'     square meter randomly placed.}
#'
#' }
#'
#' @source Paulo dos Santos Faria Lichtemberg\eqn{^1}
#'     (\url{http://lattes.cnpq.br/8132272273348880}), Ryan D. Puckett
#'     (\url{http://kare.ucanr.edu/}), Walmes Marques Zeviani\eqn{^2}
#'     (\url{http://www.leg.ufpr.br/~walmes}), Connor G. Cunningham
#'     (\url{http://kare.ucanr.edu/}), Themis J. Michailides
#'     (\url{http://ucanr.edu/?facultyid=1535}).  \eqn{^1}University of
#'     California, Department of Plant Pathology, Kearney agricultural,
#'     research and extension center, 9240 S Riverbend Ave, Parlier,
#'     California, US.  \eqn{^2}Universidade Federal do Paraná,
#'     Departamento de Estatística.
#' @examples
#'
#' data(ake_b)
#' str(ake_b)
#'
#' library(reshape)
#' library(lattice)
#' library(latticeExtra)
#'
#' #--------------------------------------------
#' # Quality.
#'
#' db <- melt(ake_b$quality[, -ncol(ake_b$quality)],
#'            id.vars = 1:6,
#'            id.measure = grep("c\\d", names(ake_b$quality)))
#' names(db)[ncol(db) - 1:0] <- c("categ", "freq")
#' str(db)
#'
#' useOuterStrips(
#'     xyplot(freq ~ categ | hed + factor(yr),
#'            groups = tra,
#'            data = db,
#'            xlab = "Treatments",
#'            ylab = "Number of fruits",
#'            jitter.x = TRUE,
#'            auto.key = TRUE,
#'            type = c("p", "a")))
#'
#' useOuterStrips(
#'     xyplot(freq ~ categ | tra + factor(yr),
#'            groups = hed,
#'            data = db,
#'            xlab = "Hed",
#'            ylab = "Number of fruits",
#'            jitter.x = TRUE,
#'            auto.key = TRUE,
#'            type = c("p", "a")))
#'
#' #--------------------------------------------
#' # Sensitivity.
#'
#' xyplot(d1 ~ d2 | as.factor(dos),
#'        groups = tra,
#'        data = ake_b$sensitivity,
#'        as.table = TRUE,
#'        scales = "free")
#'
#' # Unique levels of fungicide dose.
#' x <- sort(unique(ake_b$sensitivity$dos))
#'
#' # Variance of distance between doses.
#' esp <- function(p) {
#'     u <- x^p
#'     u <- (u - min(u))
#'     u <- u/max(u)
#'     var(diff(u))
#' }
#'
#' # Optimise de power parameter to the most equally spaced set.
#' op <- optim(par = c(p = 0.5), fn = esp)
#'
#' p <- seq(0, 1, by = 0.01)
#' v <- sapply(p, esp)
#' plot(log(v) ~ p, type = "o")
#' abline(v = op$par)
#'
#' # Sensitivity plot of each isolate.
#' xyplot(d1 ~ dos^0.2 | factor(iso),
#'        strip = FALSE,
#'        data = ake_b$sensitivity,
#'        groups = fun,
#'        type = c("p", "a"),
#'        as.table = TRUE,
#'        scales = list(draw = FALSE))
#'
#' #--------------------------------------------
#' # Severity.
#'
#' combineLimits(
#'     useOuterStrips(
#'         xyplot(inc + def ~ tra | yr,
#'                outer = TRUE,
#'                groups = hed,
#'                data = ake_b$severity,
#'                scales = list(y = list(relation = "free")),
#'                type = c("p", "a"))
#'     )
#' )
#'
#' xyplot(inc + def ~ tre,
#'        outer = TRUE,
#'        groups = yr,
#'        data = ake_b$severity,
#'        scales = list(y = list(relation = "free")),
#'        type = c("p", "a"))
#'
NULL
