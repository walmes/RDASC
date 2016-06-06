#!/usr/bin/env Rscript

#-----------------------------------------------------------------------

options(echo = TRUE)
R.version.string
Sys.info()

#-----------------------------------------------------------------------
# Load packages used develop this package and install packages needed.

library(devtools)
library(roxygen2)

# Install dependencies (DESCRIPTION)
install_github("walmes/wzRfun")
install_deps(dependencies = TRUE,
             quiet = TRUE,
             upgrade = FALSE,
             repos = "http://cran-r.c3sl.ufpr.br/")

session_info()

#-----------------------------------------------------------------------
# Load package objects.

load_all()

ls(2)
pkg <- sub(x = search()[2], pattern = ".*:", replacement = "")
packageVersion(pkg)

#-----------------------------------------------------------------------
# Ignore the check on non-ASCII present in the datasets.

Sys.setenv(`_R_CHECK_ASCII_DATA_` = "FALSE")

#-----------------------------------------------------------------------
# Run the unit tests in the package.

test()

#-----------------------------------------------------------------------
# Create de documentation.

document()

cp <- compareVersion(a = as.character(packageVersion("devtools")),
                     b = "1.9.1")
if (cp > 0) { check_man() } else { check_doc() }

#-----------------------------------------------------------------------
# Generate the rendered vignettes.

if (length(list.files("./vignettes"))) {
    build_vignettes(dependencies = FALSE)
}

#-----------------------------------------------------------------------
# Check the entire package.

check(manual = TRUE,
      vignettes = FALSE,
      check_dir = "../")

#-----------------------------------------------------------------------
# Builds the package *.tar.gz.

build(manual = TRUE, vignettes = TRUE)

#-----------------------------------------------------------------------
# Install the package.

rm(list = ls())

# lib <- path.expand("~/R-test/")
# dir.create(lib)
# .libPaths(new = lib)
# .libPaths()

install()

unlink(lib, recursive = TRUE)

#-----------------------------------------------------------------------
