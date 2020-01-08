# principal component analysis 

library(readxl)
step2 <- read_excel("Georgetown/Nhanes Paper/corr plots/plot.xlsx")
prin_comp <- prcomp (step2, scale. = T)
#principal component analysis 
prin_compF <- prcomp (step2, scale.=F)
names (prin_comp)
prin_comp$center
dim(prin_comp$x)
biplot(prin_comp, scale = 0)
std_dev <- prin_comp$sdev
pr_var <- std_dev^2
#proportion of variance explained 
prop_varex <- pr_var/sum(pr_var)
prop_varex(1:50)
prop_varex[1:6]
plot (prop_varex, xlab = "Principal Component", ylab = "Proportion of Variance Explained", type = "b")

biplot(prin_comp)

library(devtools)
library(ggplot2)

autoplot(prcomp(step2))
autoplot(prcomp(prin_compF), data = prin_compF, colour = 'pc1', label = TRUE, label.size = 3)

library(ggfortify)
df <- step2
autoplot(prcomp(df), label=FALSE, label.size = 3, loadings = TRUE, loadings.colour = 'red',
         loadings.label = TRUE, loadings.label.size = 3)
