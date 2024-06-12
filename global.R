# Packages ----------------------------------------------------------------

# Packages for Interactive Web application
library(shiny)
library(shinyBS)
library(shinydashboard)
library(bs4Dash)
library(shinycssloaders)
library(bslib)

# Packages for Data Cleaning/Processing
library(tidyverse)

# Packages for Chart Creation
library(psrcplot)
library(echarts4r)

# Packages for Map Creation
library(sf)
library(leaflet)

# Packages for Table Creation
library(DT)

# Package for Excel Data Creation
library(openxlsx)

# Package for generating HTML
library(htmltools)

# Run Modules Files ---------------------------------------------------------------------------
# This section runs the modules and unless the folder name changes, it doesn't need to be changed
# It also loads in useful functions for dashboard creation
module_files <- list.files('modules', full.names = TRUE)
sapply(module_files, source)
source("functions.R")

# Page Information --------------------------------------------------------
# This section reads in the csv files that provide the text used on the relevant pages
# Unless the file names change, it doesn't need to be changed
left_panel_info <- read_csv("data/left_panel_information.csv", show_col_types = FALSE)
page_text <- read_csv("data/page_text.csv", show_col_types = FALSE)

# Inputs ---------------------------------------------------------------
# Section for any standard inputs like the crs for wgs84
wgs84 <- 4326
load_clr <- "#91268F"
latest_yr <- "2023"

# Data via RDS files ------------------------------------------------------
# Section reading in inputs from the data folder. RDS files are R objects and read quickly
ntd_data <- readRDS("data/ntd_data.rds")

# Values for Drop Downs ---------------------------------------------------
# Section for creating the values needed in any dropdowns, lists, etc.
ntd_metric_list <- as.character(unique(ntd_data$metric))
ntd_mode_list <- ntd_data |> select("variable") |> filter(variable != "All Transit Modes") |> distinct() |> pull()

# Other ----
transit_links <- c("Community Transit" = "https://www.communitytransit.org/",
                   "Everett Transit" = "https://everetttransit.org/",
                   "King County Metro" = "https://kingcounty.gov/en/dept/metro",
                   "Kitsap Transit" = "https://www.kitsaptransit.com/",
                   "Pierce Transit" = "https://www.piercetransit.org/",
                   "Pierce County Ferry" = "https://www.piercecountywa.gov/1793/Ferry",
                   "Sound Transit" = "https://www.soundtransit.org/",
                   "Washington State Ferries" = "https://wsdot.wa.gov/travel/washington-state-ferries",
                   "Transit Planning at PSRC" = "https://www.psrc.org/our-work/transit"
)
