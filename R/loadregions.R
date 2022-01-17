#' Load list of regions
#' @return list of regions
#' @export loadregions
loadregions <- function(){

        loadRData <- function(fileName){
            #loads an RData file, and returns it
            load(fileName)
            get(ls()[ls() != "fileName"])
          }

        regions <- loadRData(system.file("extdata", "regions.rda", package = "aussiemaps.data"))
        return(regions)
}
