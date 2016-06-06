sugarcane_straw <- read.csv("sugarcane_straw.csv",
                            header = TRUE, sep = ";")
str(sugarcane_straw)

devtools::use_data(sugarcane_straw)
