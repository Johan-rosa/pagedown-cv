render_cv <- function(
    input, 
    output = paste0("johan_rosa_", Sys.Date(), ".pdf")
) {
  temp_html <- tempfile(fileext = ".html")
  rmarkdown::render(
    input = "johan_rosa_spanish.Rmd",
    output_file = temp_html
  )
  pagedown::chrome_print(temp_html, output)
  on.exit(unlink(temp_html))
}

render_cv("johan_rosa_spanish.Rmd")
