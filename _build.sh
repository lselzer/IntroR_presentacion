#!/bin/sh
set -e

for file in *.Rmd
do
    Rscript -e "rmarkdown::render(\"$file\")"
done

Rscript -e "rmarkdown::render_site()"
