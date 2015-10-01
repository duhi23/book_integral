####################################
####   Script - Libro Integral  ####
####################################

#library(bookdown)
library(rmarkdown)

dir.main <- "/Users/Diego/Dropbox/EPN/Libro Integral"
setwd(dir.main)
list.files()

#### Capitulos ####
# 1) Limites
dir.cap1 <- "./Integrales"
setwd(dir.cap1)
# file.create("Cap7.tex")
# file.edit("Cap7.tex")

#### Execution ####
setwd(dir.main)
system("xelatex -interaction=batchmode book_integral ")
system("makeindex book_series")
system("xelatex -interaction=batchmode book_integral ")
system("xelatex -interaction=batchmode book_integral ")

