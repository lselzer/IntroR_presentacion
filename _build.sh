#!/bin/sh
set -e

for file in presentation/*.Rmd
do
    Rscript -e "rmarkdown::render(\"$file\")"
done

Rscript -e "rmarkdown::render_site()"
