# install.packages("qpdf")
rm(list = ls())
library(qpdf)
list = list.files()
list

pdf_subset(input = "Mishra, 2017. MS Thesis.pdf",
           pages = c(-1, -2, -4, -5, -6, -10, -11, -12, -14:-20, -141:-144),
           output = "Thesis Without Extra Pages.pdf")
