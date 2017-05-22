`RDASC` - Reproducible Data Analysis of Scientific Cooperations
================================================================

[Walmes Zeviani](mailto:user@example.com)

This project is a R package with data and vignettes. All data sets are
of real experiments and belongs to Students and Researchers of many
areas. Many of these data and research are original and not yet
published. So, do not use these data without expressed permission of the
authors.

This package was built to share the analysis with people involved in
each research. Also, all analyses can be used for or inspire the
analysis of new data sets.

To install the package from its git repositpory, run the code below.

```r
# Install from GitLab (sob under development).
library(devtools)
install_git(url = "https://gitlab.c3sl.ufpr.br/walmes/RDASC.git")
```

To install from compressed files, visit
<http://leg.ufpr.br/~walmes/pacotes/> and download a `*.tar.gz` if Linux
or `*.zip` if Windows. Set the working directory to the folder where is
the file and run the code below. Replace `x.y-z` for the current
version. Remember to install all package dependencies also.

```r
# Installing from tarball (Linux).
install.packages(pkgs = "RDASC_x.y-z.tar.gz",
                 repos = NULL,
                 type = "source")

# Instalando a partir do zip (Windows).
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
