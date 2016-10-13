#' @name leaf_spot
#' @title Progresso da Mancha Foliar de \emph{Glomerella} em Macieira
#'     no Estado do Paran\enc{á}{a}
#' @description Avaliação da severidade (\% de área com lesão no limbo
#'     foliar) da mancha foliar de \emph{Glomerella} em duas áreas de
#'     pomar comercial.  Para cada área foram escolhidas 30 plantas ao
#'     acaso e em cada planta foi marcado, no terço médio, um segmento
#'     de ramo contendo 10 folhas. A avaliação da doença foi semanal e
#'     realizada com auxílio de escala diagramática. A severidade foi
#'     medida nas 10 folhas de cada ramo, totalizando 300 folhas por
#'     área experimental.
#' @format Um \code{data.frame} com 6600 linhas e 5 colunas, em que
#'
#' \describe{
#'
#' \item{\code{pomar}}{Variável numérica que indica o pomar.}
#'
#' \item{\code{dia}}{Dia de avaliação. Foi do dia 0 ao dia 82, com
#'     intervalos próximos de 7 dias, mudando de acordo com a ocorrência
#'     de finais de semana e feriados. Os pomares foram avaliados nas
#'     mesmas datas pois eram na mesma propriedade afastados por 300
#'     metros.}
#'
#' \item{\code{ramo}}{Variável que indentifica os 30 ramos contendo 10
#'     folhas cada um, marcados aleatóriamente em 30 árvores diferentes
#'     (um ramo por árvore) no mesmo pomar. A indentificação dos ramos é
#'     unica por pomar.}
#'
#' \item{\code{folha}}{Variável que indentifica as 10 folhas marcadas em
#'     cada ramo, totalizando 300 folhas avaliadas no total de 30 ramos
#'     por pomar. A indentificação das folhas é única por pomar. A
#'     primeira folha em cada ramo é a folha mais próxima do caule.}
#'
#' \item{\code{sever}}{Severidade medida ao longo do tempo em cada uma
#'     das folhas, em porcentagem de área com lesão de acordo com a
#'     escala diagramática adotada. Depois que a folha cai do ramo, não
#'     há como determinar a severidade, então os valores perdidos para
#'     as datas porteriores a queda da folha são representados com
#'     \code{NA}.}
#'
#' }
#'
#' @source Moreira,
#'     R. R. (\url{http://lattes.cnpq.br/8144030677308566}), May De Mio,
#'     L. L. (\url{http://lattes.cnpq.br/5306520242222948}).
#'     Universidade Federal do Paraná, Setor de Ciências Agrárias,
#'     Laboratório de Epidemiologia para Manejo Integrado de Doenças em
#'     Plantas (LEMID).
#'
#' @examples
#'
#' data(leaf_spot)
#' str(leaf_spot)
#'
#' ftable(xtabs(~pomar + dia, data = leaf_spot))
#' ftable(xtabs(~pomar + ramo + dia, data = leaf_spot))
#'
#' library(lattice)
#'
#' # Gráfico de perfil das folhas para 5 ramos em cada pomar.
#' xyplot(sever ~ dia | ramo + pomar,
#'        groups = folha,
#'        data = subset(leaf_spot, ramo <= 5),
#'        type = "o")
#'
NULL
