#' Load list of regions
#' @return list of regions
#' @export loadregions
loadregions <- function(){
        load(system.file("extdata", "regions.rda", package = "aussiemaps.data"))
        return(regions)
}
