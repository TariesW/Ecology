install.packages("FactoMineR")
install.packages("factoextra")
install.packages("openxlsx")

library(FactoMineR)
library(factoextra)
library(openxlsx)

library(readxl)
Ecology <- read_excel("Documents/Accunique/5-Principal Component Analysis-Ecology-600/Ecology.xlsx")
View(Ecology)
head(Ecology)

Ecology <- Ecology
eco.pca <- PCA(Ecology, graph = FALSE)
print(eco.pca)

eig.val <- get_eigenvalue(eco.pca)
eig.val
#based on the result, we choose 4 principal components as they explain 70% of the variation. 70% is an acceptable large percentage


fviz_eig(eco.pca, addladbles = TRUE, ylim = c(0,50), barfill = "grey", barcolor = "black", ncp = 15, hhjust = 0.5, choice = "variance", ggtheme = theme_minimal())

var <- get_pca_var(eco.pca)
var

#plots:quality and contribution
fviz_pca_ind(eco.pca, pointsize = "cos2", pointshape = 21, fill = "#E7B800", repel = T, xlim = c(-1, 14))









