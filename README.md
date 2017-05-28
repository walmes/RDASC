<img src="https://raw.githubusercontent.com/walmes/RDASC/master/vignettes/config/logo.png" width="120px" align="right" display="block" style="padding-top: 2em; -webkit-filter: drop-shadow(0px 0px 3px #111);">

Reproducible Data Analysis of Scientific Cooperations
=====================================================

[![Build Status](https://travis-ci.org/walmes/RDASC.svg?branch=master)](https://travis-ci.org/walmes/RDASC)

This project is a R package with data and vignettes. All data sets are
of real experiments and belongs to Students and Researchers of many
areas. Many of these data and research are original and not yet
published. So, do not use these data without expressed permission of the
authors.

This package was built to share the analysis with people involved in
each research. Also, all analyses can be used for or inspire the
analysis of new data sets.

To install the package from its git repository, run the code below.

```r
# Install from GitHub.
library(devtools)
install_github("walmes/RDASC")
```

To install from compressed files, visit
<http://leg.ufpr.br/~walmes/pacotes/RDASC> and download a `*.tar.gz` if
Linux or `*.zip` if Windows. Set the working directory to the folder
where is the file and run the code below. Replace `x.y-z` for the
current version. Remember to install all package dependencies also.

```r
# Installing from tarball (Linux).
install.packages(pkgs = "RDASC_x.y-z.tar.gz",
                 repos = NULL,
                 type = "source")

# Installing from tarball (Windows).
install.packages(pkgs = "RDASC_x.y.z.zip",
                 repos = NULL,
                 type = "source")
```

To do a tour on the package, run the code below.

```r
# Load the package.
library(RDASC)

# Show all visible objects.
ls("package:RDASC")

# Open the documentation.
help(package = "RDASC", help_type = "html")

# Show all vignettes.
browseVignettes(package = "RDASC")

# Open a vignette.
vignette(topic = "vignette_name_here", package = "RDASC")

# Get the citation.
citation("RDASC")
```
