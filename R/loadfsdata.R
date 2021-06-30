#' Load granular data
#' @return sf data
#' @import stringr
#' @import sf
#' @param state Australian State / Territory
#' @export loadsfdata
loadsfdata <- function(state){

  loadRData <- function(fileName){
    #loads an RData file, and returns it
    load(fileName)
    get(ls()[ls() != "fileName"])
  }

  data<- loadRData(system.file("extdata", str_c(tolower(state),"_lga_loc_poa.rda"), package = "aussiemaps.data"))

  return(data)

}
