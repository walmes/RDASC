#' @name sugarcane_straw
#' @title Efeito de Aduba\enc{çã}{ca}o NK em Cana-de-a\enc{ç}{c}ucar no
#'     Cultivo Com e Sem Cobertura com Palha
#' @description O objetivo desse trabalho foi avaliar o efeito de doses
#'     de nitrogênio (N) e potássio (K), aplicadas em cobertura sob os
#'     teores foliares de N (TFN) e K (TFK) e nos caracteres de produção
#'     durante o estádio de cana soca cultivada com e sem palha. O
#'     experimento foi realizado na Usina Iguatemi pertencente ao Grupo
#'     Santa Terezinha, localizada no município de Iguatemi- PR. O
#'     experimento foi conduzido no delineamento em bloco casualizados,
#'     com 5 repetições, no esquema de parcela subsubdividida, sendo
#'     dois manejos de colheita (com e sem palha), cinco doses de N: (0;
#'     45; 90; 135; e 180 kg ha\eqn{^{-1}}) e cinco doses de K: (0; 45;
#'     90; 135 e 180 kg ha\eqn{^{-1}}). Antes da implantação do
#'     experimento realizou-se o preparo do solo pelo sistema penta. A
#'     variedade utilizada foi a RB867515), com parcelas experimentais
#'     constituídas de três linhas duplas (1.50 x 0.90 m) e 8 m de
#'     comprimento. Os caracteres avaliados foram: teores foliares de N
#'     (TFN) e K (TFK), número de colmos por metro linear (NCM), peso
#'     médio de colmo (PMC), teor de sacarose aparente (POL), tonelada
#'     de cana por hectare (TCH) e tonelada de sacarose aparente por
#'     hectare (TSH).
#' @details TODO incluir uma imagem ou layout do experimento.
#' @format Um \code{data.frame} com 250 observações e 11 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{palha}}{Variável métrica que indica os níveis do fator
#'     categórico cobertura do solo com palha: 1 - com palha, 2 - sem
#'     palha.}
#'
#' \item{\code{bloc}}{Variável métrica que identifica os blocos. Cada
#'     bloco teve tamanho 2 sendo uma parcela com cada nível de
#'     cobertura do solo.}
#'
#' \item{\code{K}}{Fator métrico que indica a dose de potássio aplicada,
#'     kg ha\eqn{^{-1}}.}
#'
#' \item{\code{N}}{Fator métrico que indica a dose de nitrogênio
#'     aplicada, kg ha\eqn{^{-1}}.}
#'
#' \item{\code{ncm}}{Número de colmos por metro linear, resultado da
#'     contagem de uma linha de 5 m.}
#'
#' \item{\code{pmc}}{Peso médio de colmo, kg.}
#'
#' \item{\code{tch}}{Produção de cana, em tonelada de cana por hectare.}
#'
#' \item{\code{pol}}{Teor de sacarose aparente.}
#'
#' \item{\code{tsh}}{Produção de sacarose, em toneladas de sacarose
#'     aparente por hectare.}
#'
#' \item{\code{tfn}}{Teor foliar de nitrogênio (g kg\eqn{^{-1}}).}
#'
#' \item{\code{tfk}}{Teor foliar de potássio (g kg\eqn{^{-1}}).}
#'
#' }
#' @keywords contagem PS
#' @source Dados que são parte da Tese de Doutorado de Michael Jonathan
#'     Fernandes Alves (\email{michaelagronomia@@gmail.com},
#'     \url{http://lattes.cnpq.br/0834978726176394}), estudante de
#'     Doutorado do Programa de Pós Graduação em Ciência do Solo da UFPR
#'     (bolsista do CNPq).
#' @examples
#'
#' data(sugarcane_straw)
#' str(sugarcane_straw)
#'
#' ftable(xtabs(~palha + K + N, data = sugarcane_straw))
#'
#' library(lattice)
#'
#' xyplot(tch ~ K | palha, groups = N, data = sugarcane_straw,
#'        type = c("p", "a"),
#'        xlab = expression("Potássio"~(kg~ha^{-1})),
#'        ylab = expression("Produção de cana"~(ton~ha^{-1})),
#'        auto.key = list(
#'            title = expression("Nitrogênio"~(kg~ha^{-1})),
#'            cex.title = 1.1, columns = 5),
#'        strip = strip.custom(
#'            strip.names = FALSE,
#'            strip.levels = TRUE,
#'            factor.levels = c("Com palha", "Sem palha")))
#'
NULL
