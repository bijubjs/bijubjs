rm(list = ls())
library(qpdf)

# Combined application packet:
wd.files = c(list.files())
wd.files

# CFM Opinion:
ktm = pdf_subset(wd.files[10],
           pages = c(2),
           output = NULL)

# Home or Away:
home = pdf_subset(wd.files[12],
                 pages = c(2, 3),
                 output = NULL)

pdf_combine(input = c(
  ktm,
  home,
  wd.files[3], # Gore2022
  wd.files[11], # PushEcon
  wd.files[9], # AMgmt
  wd.files[7] # SAP
),
output = "./Combos/BM_EG.pdf")