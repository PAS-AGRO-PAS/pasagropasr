#' @title Lambs carcass measurements and tissues proportion
#'
#' @description
#' The dataset `lambBreeds` contains the information from  40 male lambs (22 of Churra Galega Bragançana (CGB) breed and
#' 18 of Suffolk (SU) breed), carcass dimension measurements, tissues depth measurements,
#' *longissimus* muscle area, breast bone tissue thickness, and carcass composition.
#'
#' @format A data frame with 40 rows (lambs) and 25 columns (variables):
#' \describe{
#'   \item{Lamb}{Lamb identification number}
#'   \item{Breed}{Breed of the lamb: 22 of Churra Galega Bragançana breed (CGB) and 18 of Suffolk breed (SFK)}
#'   \item{HCW}{Hot carcass weight (Kg) obtained imediatly after slaugther}
#'   \item{F}{Leg length (mm) - the smallest distance from the perineum to the interior face
#'    of the tarsal-metatarsal articular surface}
#'   \item{K}{Carcass length (mm) - measured from de base of the tail to the base of the neck}
#'   \item{G}{Width of the buttocks (mm) - the width measured using the measuring calliper at
#'    the level of the proximal edge of the patellae}
#'    \item{U}{Circumference of thorax (mm) - the circumference measured using a tape held
#'    horizontally around the thorax at the level of the caudal portion of the scapula}
#'    \item{CB}{Circumference of buttock (mm) - the circumference measured using a
#'     tape held horizontally around the buttocks at the level of the caudal insertion}
#'    \item{C1}{Subcutaneous fat thickness (mm) between the 1st-2nd lumbar vertebrae}
#'    \item{C3}{Subcutaneous fat thickness (mm) between the 3rd-4th lumbar vertebrae}
#'    \item{C12}{Subcutaneous fat thickness (mm) between the 12th-13th ribs}
#'    \item{BT2}{Total breast bone tissue thickness (mm) measured at middle of the 2nd sternebrae}
#'    \item{BT3}{Total breast bone tissue thickness (mm) measured at middle of the 3rd sternebrae}
#'    \item{BT4}{Total breast bone tissue thickness (mm) measured at middle of the 4th sternebrae}
#'    \item{B1}{*Longissimus* muscle depth (mm) measured between the 1st-2nd lumbar vertebrae}
#'    \item{B3}{*Longissimus* muscle depth (mm) measured between the 3rd-4th lumbar vertebrae}
#'    \item{B12}{*Longissimus* muscle depth (mm) measured between the 12-13th ribs}
#'    \item{LEA1}{*Longissimus* muscle area (\eqn{cm^2}) measured between the 1st-2nd lumbar vertebrae}
#'    \item{LEA3}{*Longissimus* muscle area (\eqn{cm^2}) measured between the 3rd-4th lumbar vertebrae}
#'    \item{LEA12}{*Longissimus* muscle area (\eqn{cm^2}) measured between the 12-13th ribs}
#'    \item{MUS}{Carcass muscle proportion (%)}
#'    \item{SF}{Carcass subcutaneous fat proportion (%)}
#'    \item{IF}{Carcass intermuscular fat proportion (%)}
#'    \item{BO}{Carcass bone proportion (%)}
#'    \item{KKCF}{Kidney-knob channel fat proportion (%)}
#'    }
#'
#' @author
#' Vasco Cadavez \email{vcadavez@ipb.pt}
#'
#' @keywords lambs carcass tissues measurements composition
#'
#' @family carcass
#'
#' @references
#' \insertRef{CadavezMSci2012}{pasagropasr}
#'
#' @importFrom readxl read_xlsx
#'
#' @docType data
#' @name lambBreeds
#' @usage data(lambBreeds)
#' @examples
#' data(lambBreeds)
#' str(lambBreeds)
"lambBreeds"