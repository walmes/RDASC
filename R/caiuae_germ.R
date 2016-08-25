#' @name caiuae_germ
#' @title Temperatura e Umidade na Germina\enc{çã}{ca}o de
#'     Caiu\enc{é}{e} \emph{Elaeis oleifera}
#' @description Conjunto de dados com os resultados de um experimento
#'     feito com sementes de caiaué (\emph{Elaeis oleifera}) onde se
#'     estudou a combinação de temperatua e umidade na germinação e
#'     velocidade de germinação das sementes.
#'
#' O experimento foi conduzido na Embrapa Amazônia Ocidental, no Campo
#' Experimental do Rio Urubu (CERU), Rio Preto da Eva - AM e no
#' Laboratório de Dendê e Agroenergia, km 29 da Rodovia AM, em Manaus –
#' AM, Brasil.
#'
#' Foram utilizadas sementes do Banco Ativo de Germoplasma (BAG) de
#' caiaué produzidas no CERU, originárias de Manicoré-AM. Os cachos
#' foram colhidos quando apresentavam de três a cinco frutos maduros,
#' desprendidos naturalmente do cacho (maturidade fisiológica). Após a
#' colheita, os frutos foram retirados manualmente do cacho e o
#' mesocarpo extraído em despolpadora centrífuga elétrica. Em seguida,
#' as sementes (endocarpo, endosperma e embrião) foram secadas à sombra,
#' selecionadas, eliminando as deformadas ou danificadas pelo
#' beneficiamento, e submetidas a tratamento com fungicida.
#'
#' O experimento foi instalado no delineamento inteiramente casualizado,
#' com três repetições de 500 sementes para cada tratamento, em esquema
#' fatorial 5 \eqn{\times} 3, sendo cinco intervalos de graus de umidade
#' das sementes (\code{umid}) e três períodos de permanência no
#' termogerminador (tratamento térmico, \code{temp}). Os períodos de
#' permanência das sementes no termogerminador (39 \eqn{\pm} 1
#' \eqn{^\circ C} e umidade relativa do ar de aproximadamente 65\%)
#' foram de 55, 75 e 100 dias. Os intervalos de graus de umidade de
#' entrada no termogerminador foram: 18 a 19\%; 19 a 20\%; 20 a 21\%; 21
#' a 22\% e 22 a 23\%. A determinação do grau de umidade das sementes
#' foi realizada pelo método de estufa, realizando a secagem das
#' sementes a 105 \eqn{^\circ C} \eqn{\pm} 2 \eqn{^\circ C}, por 24
#' horas, utilizando quatro repetições de 10 sementes para cada lote de
#' 500 sementes.
#'
#' Após o ajuste do grau de umidade, as sementes foram acondicionadas em
#' sacos de polietileno de 65 \eqn{\times} 50 cm e espessura de 0,2 mm,
#' fechados, contendo volume de ar no mínimo igual ao volume de sementes
#' e mantidas em termogerminador (câmara de alvenaria com isolamento
#' térmico com aquecimento por resistência elétrica, sistema de ajuste
#' de temperatura digital, circulação forçada de ar e monitoramento da
#' umidade relativa) pelo período de tratamento térmico definido para
#' cada tratamento.  Ao final do tratamento térmico as sementes foram
#' hidratadas por imersão em tanques de água, sob oxigenação, durante
#' oito dias.  Em seguida, as sementes foram secadas a sombra para
#' eliminação da umidade externa e colocadas em sacos de polietileno (65
#' cm \eqn{\times} 50 cm, espessura de 0,2 mm), devidamente fechados,
#' com volume de ar no mínimo, igual ao das sementes.  Para germinação
#' os sacos com as sementes foram mantidos em sala de alvenaria, no
#' escuro, na temperatura entre 27 a 30 \eqn{^\circ C}.  A contagem de
#' sementes germinadas foi realizadas a cada 7 dias, após o
#' acondicionamento das sementes na sala de germinação. Considerou-se
#' germinada a semente com protrusão visível pelo poro germinativo do
#' eixo hipocótilo-radícula. Para cálculo do percentual de germinação,
#' as sementes descartadas por contaminação e não germinadas foram
#' consideradas como não germinadas.
#' @format Um \code{data.frame} com 45 observações e 8 variáveis, em
#'      que
#'
#' \describe{
#'
#' \item{\code{temp}}{Temperaturas nas quais foram mantidas as
#'     sementes.}
#'
#' \item{\code{umid}}{Umidade nas quais foram mantidas as sementes.}
#'
#' \item{\code{g7, ..., g35}}{Número de sementes germinadas aos 7, 14,
#'     21, 28 e 35 dias.}
#'
#' \item{\code{ngerm}}{Número de sementes que não germinaram no período
#'     de 35 dias.}
#'
#' }
#' @keywords binomial
#' @source Dados produzídos por Wanderlei Antônio Alves Lima
#'     (\email{wanderlei.lima@@embrapa.br}).
#' @examples
#'
#' # Object structure.
#' data(caiuae_germ)
#' str(caiuae_germ)
#'
#' # Frequencies.
#' ftable(xtabs(~umid + temp, data = caiuae_germ))
#'
#' # Checking if is a complete cases dataset.
#' all(complete.cases(caiuae_germ))
#'
#' # Descriptive measures.
#' summary(caiuae_germ)
#'
#' # Número total de sementes avaliadas.
#' caiuae_germ$tot <-
#'     rowSums(caiuae_germ[, -c(1:2)])
#'
#' # Germinadas aos 15 dias.
#' caiuae_germ$germini <- rowSums(caiuae_germ[, c(3:4)])
#'
#' # Germinação final.
#' caiuae_germ$germ <- rowSums(caiuae_germ[, c(3:7)])
#'
#' # IVG - índice de velocidade de germinação.
#' caiuae_germ$ivg <-
#'     rowSums(sweep(x = caiuae_germ[, c(3:7)],
#'                   MARGIN = 2,
#'                   STATS = seq(from = 7, to = 35, by = 7),
#'                   FUN = "/"))
#'
NULL
