#!/bin/sh
set -e

for file in *.Rmd
do
    Rscript -e "rmarkdown::render(\"$file\", output_format = "pdf_document")"
done

Rscript -e "rmarkdown::render_site()"
