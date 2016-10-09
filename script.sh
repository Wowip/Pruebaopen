#!bin/bash
cd manuscript
for file in *.Rmd; do
       Rscript -e "library(knitr); knit('$file')"
done
