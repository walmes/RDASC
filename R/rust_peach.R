#' @name ferrugem
#' @title Progresso da Ferrugem em Folhas de Pessegueiro
#' @description Avaliação semanal da severidade (\% de lesão no limbo
#'     foliar por meio de escala) da ferrugem (\emph{Tranzschelia
#'     discolor}) em folhas de pessegueiro (\emph{Prunus persica}).
#'     Foram marcados 2 ramos por árvore (um de cada lado da planta)
#'     contendo 10 folhas marcadas em cada um.  Foram testadas também 7
#'     doses de nitrogênio em combinação com tratamentos de poda. O
#'     delineamento foi de blocos casualizados e o ensaio foi repetido
#'     em 3 safras no mesmo pomar.
#' @format Um \code{data.frame} com 30240 linhas e 8 colunas, em que
#'
#' \describe{
#'
#' \item{\code{safra}}{Fator categórico que representa cada uma das 3
#'     safras nas quais o experimento foi conduzido.}
#'
#' \item{\code{dia}}{Dia de avaliação. Foi do dia 0 ao dia 84, com
#'     intervalos de 7 dias, perfazento um total de 12 níveis.}
#'
#' \item{\code{folha}}{Folhas marcadas em 2 ramos por árvore (um de cada
#'     lado). As foram eram observadas a cada 7 dias, portanto, os
#'     registros em uma folha são no máximo 12 de forma longitudinal. A
#'     indentificação das folhas é única.}
#'
#' \item{\code{nitro}}{Nitrogênio aplicado em 7 doses (0, 40, 80,
#'     120, 160, 200, 240 kg ha\eqn{^{-1}}.}
#'
#' \item{\code{lado}}{Fator que representa o lado da planta no qual
#'     estava o ramo, sendo que 1 = sul e 2 = norte.}
#'
#' \item{\code{poda}}{Números de poda aplicado nas plantas, sedo que 1 =
#'     1 poda e 2 = 4 podas.}
#'
#' \item{\code{bloco}}{Fator categórico que representa os blocos do
#'     experimento.}
#'
#' \item{\code{sever}}{Severidade medida ao longo do tempo em cada
#'     uma das folhas, em porcentagem de área com lesão de acordo com a
#'     escala diagramática adotada. Depois que a folha cai do ramo, não
#'     há como determinar a severidade, então os valores perdidos para
#'     as datas porteriores a queda da folha são representados com
#'     \code{NA}.}
#'
#' }
#'
#' @source Moreira, R. R. (http://lattes.cnpq.br/8144030677308566), May
#'     De Mio, L. L. (http://lattes.cnpq.br/5306520242222948).
#'     Universidade Federal do Paraná, SCA, Laboratório de Epidemiologia
#'     para Manejo Integrado de Doenças em plantas (LEMID).
#'
#' @examples
#'
#' data(ferrugem)
#' str(ferrugem)
#'
#' # Combinações entre poda x nitrogênio em cada safra.
#' ftable(xtabs(~safra + poda + nitro, data = ferrugem))
#'
#' # Combinações entre bloco x dia em cada safra.
#' ftable(xtabs(~safra + bloco + dia, data = ferrugem))
#'
#' library(lattice)
#' library(latticeExtra)
#'
#' # Ver resultados da safra 1.
#' useOuterStrips(
#'     xyplot(sever ~ dia | nitro + bloco,
#'            groups = poda,
#'            data = subset(ferrugem, safra == "1"),
#'            type = c("p", "smooth"),
#'            xlab = "Dia de avaliação",
#'            ylab = "Severidade (%)"))
#'
#' xyplot(sever ~ dia | folha, type = "l",
#'        data = subset(ferrugem, safra == "1" &
#'                                bloco == "I" &
#'                                nitro == 0 &
#'                                poda == 1 &
#'                                lado == 1),
#'        xlab = "Dia de avaliação",
#'        ylab = "Severidade (%)")
#'
#' # As 10 folhas de um ramo.
#' subset(ferrugem, safra == "1" &
#'                  bloco == "I" &
#'                  nitro == 0 &
#'                  poda == 1 &
#'                  lado == 1)
#'
NULL
