#!/bin/sh

Rscript -e "knitr::render_book('index.Rmd', 'bookdown::gitbook')"
