context("Code Style Compliance")

if (requireNamespace("lintr", quietly = TRUE)) {
    test_that("Package code style", {
        lintr::expect_lint_free(
            linters = lintr::with_defaults(camel_case_linter = NULL))
    })
}

if (Sys.info()["sysname"] == "Linux" &
    file.exists("../../DESCRIPTION")) {
    ref <- c("ASCII", "UTF-8", "directory", "HTML", "bzip2")
    test_that("Encoding of files in root", {
        enc <- system(
            "file -b ../../* | cut -f 1 -d\" \" | sort | uniq",
            intern = TRUE)
        expect_true(all(enc %in% ref))
    })
    test_that("Encoding of files in R/", {
        enc <- system(
            "file -b ../../R/* | cut -f 1 -d\" \" | sort | uniq",
            intern = TRUE)
        expect_true(all(enc %in% ref))
    })
    test_that("Encoding of files in data-raw/", {
        enc <- system(
            "file -b ../../data-raw/* | cut -f 1 -d\" \" | sort | uniq",
            intern = TRUE)
        expect_true(all(enc %in% ref))
    })
    test_that("Lines width", {
        lin <- suppressWarnings(
            system("grep -l \".\\{73\\}\" ../../R/*",
                   intern = TRUE))
        expect_true(length(lin) == 0)
    })
}
