#' Funcao para ler o arquivo .dbc
#'
#' Essa funcao recebe o caminho do arquivo e ler o arquivo
#'
#'
#' @example
#' readdbc("X:/USID/BOLSA_EXTENSAO_2024/Input/PACE2401.dbc")

#' @import read.dbc
#' @export
readdbc <- function(caminho){
  read.dbc(caminho)
}
