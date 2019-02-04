## Plot 2: Scatter Plot
This plot displays the six variables linear relations with SalePrice.

```{r,warning=FALSE,message=FALSE}
library(tidyverse)
library(ggplot2)
library(dplyr)
library(corrplot)

df_num <- read_csv("/home/juliazhao/Documents/DataIncubator/section3/df_num.csv")
attach(df_num)
par(mfrow=c(2,3))
plot(GrLivArea,SalePrice, main="Scatterplot of GrLivArea vs. SalePrice", col = "#56B4E9")
reg2 <- lm(SalePrice~GrLivArea, data=df_num)
abline(reg2)
plot(GarageArea, SalePrice, main = "Scatterplot of GarageArea vs. SalePrice",col = "#56B4E9")
reg3 <- lm(SalePrice~GarageArea,data=df_num)
abline(reg3)
plot(TotalBsmtSF,SalePrice, main="Scatterplot of TotalBsmtSF vs. SalePrice",col = "#56B4E9")
reg4 <- lm(SalePrice~TotalBsmtSF,data=df_num)
abline(reg4)
plot(`1stFlrSF`, SalePrice, main="Scatterplot of OnestFlrSF vs. SalePrice", col = "#56B4E9")
reg5 <- lm(SalePrice~`1stFlrSF`,data=df_num)
abline(reg5)
plot(YearBuilt, SalePrice, main="Scatterplot of YearBuilt vs. SalePrice", col = "#56B4E9")
reg8 <- lm(SalePrice~YearBuilt,data=df_num)
abline(reg8)
plot(YearRemodAdd, SalePrice, main="Scatterplot of YearRemodAdd vs. SalePrice", col = "#56B4E9")
reg9 <- lm(SalePrice~YearRemodAdd,data=df_num)
abline(reg9)
```

