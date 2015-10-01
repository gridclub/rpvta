# Mapping bus locations


#' Make simple leaflet of current bus locations
#'
#' @export
leafletBusLocs <- function() {
  busIcon = leaflet::makeIcon(system.file("icons", "bus.png", package = "rpvta"),
                              iconWidth = 17, iconHeight = 17)
  m = vehicsToDf() %>%
    dplyr::filter_(~ Longitude > -74) %>%
    leaflet::leaflet() %>%
    leaflet::addTiles() %>%
    leaflet::addMarkers(~Longitude, ~Latitude,
                        popup = htmltools::htmlEscape(~Name),
                        icon = busIcon)
  m
}
