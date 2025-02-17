data_folder <- "T:/Projects/71 - SSB PCOS/Data/"

library(dplyr)
library(forcats)
library(tidyr)
library(here)
library(data.table)
library(openxlsx)
library(readr)

if (!exists(paste0(here(), "/outputs"))) {
  dir.create(paste0(here(), "/outputs"))
}

source(paste0(here(), "/significance_functions.R"))


# Excel Styles

sig <- createStyle(
  numFmt = "#,##0.000",
  halign = "right",
  fgFill = "#C6E0B4"
)

not_sig <- createStyle(
  numFmt = "#,##0.000",
  halign = "right",
  fgFill = "#FCD5B4"
)
