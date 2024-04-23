#' Funcao para baixar DBC
#'
#' Essa funcao serve para baixar varias bases do DataSUS
#'
#'
#' @example
#' baixardbc(202302,202302)


download.dbc2FTP<-function(UF,ANOMES,TIPO){
  arquivo <-paste0(TIPO,UF,ANOMES,".dbc")
  if(TIPO=="PA") url<-paste0("ftp://ftp.datasus.gov.br/dissemin/publicos/SIASUS/200801_/Dados/",arquivo)
  download.file(url,destfile = arquivo,mode="wb")
}


anomes = function(inicio, final){
  resultado = inicio:final
  resultado = resultado[as.numeric(substr(resultado,5,6))>0 & as.numeric(substr(resultado,5,6))<=12]
  resultado = substr(resultado,3,6)
  return(resultado)
}

#' @export
baixardbc = function(inicio, final){
  periodo = anomes(inicio,final)
  sapply(1:length(periodo),function(i)download.dbc2FTP("CE",periodo[i],"PA"))
}
#
