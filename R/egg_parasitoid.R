#' @name egg_parasitoid
#' @title Efeito de Inseticidas no Parasitismo de \emph{Trichogramma} em
#'     Ovos de Lagartas da Soja
#'
#' @description Resultados de um experimento que estudou o efeito de 7
#'     inseticidas sobre o parasitismo de duas espécies de
#'     \emph{Trichogramma} em ovos de dois hospedeiros que são lagartas
#'     defolhadoras na cultura do soja. O experimento foi instalado em
#'     delineamento inteiramente casualizado com 20 repetições com
#'     tratamentos proveninetes do arranjo em esquema fatorial completo
#'     \eqn{7 \times 2 \times 2} (28 celas), perfazendo 560 obsevações.
#'
#' A unidade experimental foi uma cartela com ovos do hospedeiro
#'     previamente tratados com um inseticida. Uma fêmea de uma das
#'     espécies de parasitóide era colocada com cartela para parasitá-lo
#'     dentro de um recipiente. Depois de 24 horas era verificado se a
#'     fêmea estava viva. Ela era então removida do recipiente. Os ovos
#'     da cartela foram observados diáriamente até que acontecesse a
#'     emergência dos parasitóides. O número de ovos parasitados, total
#'     de parasitóides mortos e nascidos de cada sexo e número de dias
#'     de incubação dos parasitóides foram algumas das variáveis
#'     registradas no experimento.
#'
#' Quando as fêmeas morrem antes de fazer o parasitismo, não existem
#'     registros para ovos parasitados e para as demais variáveis
#'     dependentes do evento parasitar os ovos.
#'
#' @format Um \code{data.frame} com 560 observações e 12 variáveis, em
#'      que
#'
#' \describe{
#'
#' \item{\code{inset}}{Fator que representa o inseticica aplicado aos
#'     ovos do hospedeiro.}
#'
#' \item{\code{paras}}{Fator que representa a espécie do parasitóride:
#'     \emph{Trichogramma atopovirilia} e \emph{Trichogramma
#'     pretiosum}.}
#'
#' \item{\code{hosp}}{Fator que representa o hospedeiro cujos ovos são
#'     parasitados: \emph{Anticarsia gemmatalis} (lagarta-da-soja) e
#'     \emph{Chrysodeixis includens} (lagarta-falsa-medideira).}
#'
#' \item{\code{rept}}{Número que indentifica as repetições de cada cela
#'     experimental. A unidade experimental é uma cartela com ovos do
#'     hospedeiro (\code{hosp}) tratado com um inseticida (\code{inset})
#'     e exposta a um parasitóide (\code{paras}).}
#'
#' \item{\code{otot}}{Número total de ovos para serem parasitados na
#'     cartela (unidade experimental).}
#'
#' \item{\code{opar}}{Número de ovos parasitados da cartela pela fêmea
#'     do parasitóide.}
#'
#' \item{\code{oeme}}{Número de ovos com orifício de emergência de
#'     parasitóide, o que indica que o ovo foi parasitado e emergiram
#'     parasitóides dele (pelo menos um).}
#'
#' \item{\code{pne}}{Parasitóides não emergidos por cartela. É o total
#'     de parasitóides encontrados nos ovos da cartela que não
#'     emergiram.}
#'
#' \item{\code{incub}}{Tempo para incubação dos parasitóides. É o
#'     intervalo de tempo (em dias) entre o dia da liberação da fêmea
#'     nos ovos (início do parasitismo) e a emergência dos
#'     parasitóides. Os parasitóides de uma mesma cartela emergiram
#'     todos no mesmo dia.}
#'
#' \item{\code{macho}}{Número de parasitóides machos na cartela
#'     emergidos com vida. A diferença entre os sexos é morfológica,
#'     marcada pelo tipo de antena dos parasitóides.}
#'
#' \item{\code{femea}}{Número de parasitóides fêmeas na cartela
#'     emergidos com vida. A soma dois sexos resulta no total de
#'     parasitóides vivos, enquanto que \code{pne} é o total de mortos.}
#'
#' \item{\code{mort}}{Variável binária que indica a sobrevivência (1) ou
#'     não (2) da fêmea 24 horas após ser liberada na cartela.}
#'
#' }
#' @source Tamara Akemi Takahashi (\email{tamaratakahashi@@gmail.com}).
#'     IMPROVE
#' @examples
#'
#' data(egg_parasitoid)
#' str(egg_parasitoid)
#'
#' # Frequência planejada.
#' xtabs(~inset + paras + hosp, data = egg_parasitoid)
#'
#' # Frequência dos casos completos.
#' xtabs(~inset + paras + hosp, data = na.omit(egg_parasitoid))
#'
NULL
