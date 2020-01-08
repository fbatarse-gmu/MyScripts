install.packages("corrplot")
install.packages("hmisc")
install.packages("readxl")
install.packages("ggfortify")
library(readxl)
library(corrplot)

#read in files

step2 <- read_excel("Georgetown/Nhanes Paper/corr plots/plot.xlsx")
step2.cor = cor(step2)

#create correlations

step2P.cor = cor(step2, method = c("pearson"))
step2.cor = cor(step2, method = c("spearman"))
View(step2)
View(step2P)

#plotting

#pearson
palette = colorRampPalette(c("green", "white", "red")) (20) 
heatmap(x = step2P.cor, col = palette, symm = TRUE)
corrplot(step2P.cor)

#spearman
palette = colorRampPalette(c("green", "white", "red")) (20) 
heatmap(x = step2.cor, col = palette, symm = TRUE)
corrplot(step2.cor)
