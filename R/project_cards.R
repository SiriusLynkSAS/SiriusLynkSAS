escape_html <- function(x) {
  x <- ifelse(is.na(x), "", as.character(x))
  x <- gsub("&", "&amp;", x, fixed = TRUE)
  x <- gsub("<", "&lt;", x, fixed = TRUE)
  x <- gsub(">", "&gt;", x, fixed = TRUE)
  x <- gsub('"', "&quot;", x, fixed = TRUE)
  x
}

render_project_cards <- function(df) {
  if (nrow(df) == 0) return(invisible(NULL))

  cat('<div class="project-card-grid">\n')
  for (i in seq_len(nrow(df))) {
    p <- df[i, , drop = FALSE]
    name <- escape_html(p$proyecto)
    location <- escape_html(p$ubicacion)
    summary <- escape_html(p$resumen)
    tags <- escape_html(p$especialidades)

    cat('<article class="portfolio-card">\n')
    cat(sprintf('<div class="portfolio-sector">%s</div>\n', escape_html(p$sector)))
    cat(sprintf('<h3>%s</h3>\n', name))
    if (nzchar(location)) cat(sprintf('<div class="portfolio-location">%s</div>\n', location))
    cat(sprintf('<p>%s</p>\n', summary))
    if (nzchar(tags)) cat(sprintf('<div class="portfolio-tags">%s</div>\n', tags))
    cat('</article>\n')
  }
  cat('</div>\n')
}
