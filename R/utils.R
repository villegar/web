#' Create hexagonal logo for the package
#'
#' @param subplot image to use as the main logo
#' @param dpi plot resolution (dots-per-inch)
#' @param h_color color for hexagon border
#' @param h_fill color to fill hexagon
#' @param output output file (hexagonal logo)
#' @param package title for logo (package name)
#' @param p_color color for package name
#' @param url URL for package repository or website
#' @param u_size text size for URL
#'
#' @return hexagonal logo
#' @export
#'
#' @examples
#' hex_logo()
hex_logo <- function(subplot = "static/images/monitor.png",
                     dpi = 600,
                     h_color = "#000000",
                     h_fill = "#dd352e",
                     output = "static/images/logo.png",
                     package = "www",
                     p_color = "#EEEEEE",
                     url = "https://github.com/villegar/www",
                     u_size = 1.55) {
  hexSticker::sticker(subplot = subplot, package = package,
                      h_color = h_color,  h_fill = h_fill,
                      dpi = dpi,
                      s_x = 1.0, s_y = .85, s_width = 0.5,
                      p_x = 1.0, p_y = 1.52, p_size = 6, p_color = p_color,
                      url = url,
                      u_angle = 30, u_color = p_color, u_size = u_size,
                      filename = output)
}
hex_logo()
