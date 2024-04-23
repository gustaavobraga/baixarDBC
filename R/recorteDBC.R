#' Funcao para recortar a base .dbc
#'
#' Essa funcao recebe uma base de dados e salva ela como CSV
#'
#'
#' @example
#' readdbc("X:/USID/BOLSA_EXTENSAO_2024/Input/PACE2401.dbc")

#' @export
recorteDBC = function(dados){
  df = dados[1:100,1:5];df
  write.csv(df, file = "recorte.csv", row.names = FALSE)
  head(df)
}
