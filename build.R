lapply(list.files(path = "presentation/", pattern = "\\.Rmd$", full.names = TRUE), 
       rmarkdown::render)
rmarkdown::render_site()