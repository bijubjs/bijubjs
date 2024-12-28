# install.packages("qpdf")
rm(list = ls())
library(qpdf)
list = list.files()
list

pdf_combine(
  c(
  list[17],
  list[4],
  list[9],
  list[10],
  list[6],
  list[15],
  #list[14],
  #list[5],
  list[19]),
  output = "Mishra Papers.pdf"
  )
