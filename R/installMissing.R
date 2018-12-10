#' installMissingPackages
#'
#' install any missing packages
#'
#' @export
installMissingPackages <- function(list.of.packages = c("devtools","timeDate","lubridate","data.table","dplyr","arules","gsubfn","stringr","tidyr","doParallel","foreach","ggplot2", "rPref","plotly","scales","WRS2","funModeling")){
  new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
  if(length(new.packages)) install.packages(new.packages, repos='https://cran.de.r-project.org')
}

#' installAuxInteractiveUtils
#'
#' install aux interactive utils
#'
#' @export
installAuxInteractiveUtils <- function(){
  devtools::install_github("tenshis/r_utils")
}
