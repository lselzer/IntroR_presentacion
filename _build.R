# List rmarkdown files in presentation folder and render them

presentations <- list.files("presentation/", "Rmd$",full.names = TRUE )
lapply(presentations, rmarkdown::render)
