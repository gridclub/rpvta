# R package for dealing with PVTA bus data
# based on stuff in the hackPVTA github repo

library(devtools)
use_package("rjson", type = "Imports")
use_package("dplyr", type = "Depends")
use_package("leaflet", type = "Imports")
use_package("htmltools", type = "Imports")

busIcon <- leaflet::makeIcon(system.file("icons", "bus.png", package = "rpvta"), iconWidth = 17, iconHeight = 17)
use_data(busIcon, overwrite = TRUE)

document()

install()


