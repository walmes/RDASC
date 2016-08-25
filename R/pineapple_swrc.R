#' @name pineapple_swrc
#' @title Atributos f\enc{í}{i}sico-h\enc{í}{i}dricos do solo sob
#'     pr\enc{á}{a}ticas de manejo para cultivo de abacaxizeiro
#' @description Resultados de um experimento fatorial \eqn{2\times
#'     2\times 4\times 2} que estudou o efeito da cobertura do solo e
#'     gessagem no cultivo de quatro variedades de abacaxi com amostras
#'     de solo de duas profundidades. O experimento foi instalado no
#'     delineamento de blocos completos ao acaso no Instituto Federal de
#'     Educação, Ciência e Tecnologia de Cáceres - MT.
#' @format Um \code{data.frame} com 1664 observações e 7 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{cober}}{Fator categórico que representa a presença ou
#'     ausência de cobertura do solo com milheto para cultivo do
#'     abacaxizeiro.}
#'
#' \item{\code{gesso}}{Fator categórico que representa a dose de gesso
#'     agrícola aplicada ao solo para o cultivo do abacaxizeiro, 0 e 4
#'     ton ha\eqn{^-1}.}
#'
#' \item{\code{prof}}{Fator categórico que indentifica a profundidade do
#'     solo na qual foram retiradas amostras de solo indeformadas,
#'     0-0.05 m e 0.05-0.2 m.}
#'
#' \item{\code{varie}}{Fator categórico que indenfica as variedades de
#'     abacaxizeiro cultivadas no experimento: Pérola, Smooth Cayenne,
#'     IAC - Fantástico and Imperial (nomes sem acentos no objeto).}
#'
#' \item{\code{bloc}}{Fator categórico que indentifica os blocos do
#'     experimento.}
#'
#' \item{\code{tens}}{Fator métrico que é a tensão matricial aplicada na
#'     amostra de solo para retirada de umidade. Foram aplicadas as
#'     tensões 1, 2, 4, 6, 8 e 10 kPa com funis
#'     de placa porosa e as tensões 33, 66, 100, 300, 1,500 kPa com a
#'     panela de Richards em amotras previamente saturadas.}
#'
#' \item{\code{umid}}{Umidade restante no solo ao receber a tensão
#'     matricial acima mencionada. Depois de alcançar o equilíbrio,
#'     cada amostra teve a massa determinada e foi submetida à proxima
#'     tensão.}
#'
#' }
#' @source Dados produzidos por
#'     \href{http://lattes.cnpq.br/8676820051946774}{Prof. Dr. Milson
#'     Evaldo Serafim}.
#' @examples
#'
#' library(latticeExtra)
#'
#' ftable(xtabs(~prof + gesso + varie + cober, data = pineapple_swrc))
#' ftable(xtabs(~tens + varie, data = pineapple_swrc))
#'
#' pineapple_swrc$gescobpro <- with(pineapple_swrc,
#'                                  interaction(as.integer(gesso),
#'                                              as.integer(cober),
#'                                              as.integer(prof)))
#'
#' p1 <- xyplot(umid ~ tens | gescobpro + varie,
#'              data = pineapple_swrc,
#'              groups = bloc, type = "b",
#'              ylab = "Umidade do solo",
#'              xlab = "log 10 da tensão matricial",
#'              scales = list(x = list(log = 10)),
#'              xscale.components = xscale.components.log10ticks)
#' useOuterStrips(p1)
#'
NULL
