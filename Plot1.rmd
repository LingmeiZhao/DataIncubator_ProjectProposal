## Plot 1:Correlation Coefficients
This Correlation shows there are nine variables in the dataset have high linear relationship with SalePrice. 
```{r}
library(tidyverse)
library(ggplot2)
library(dplyr)
library(corrplot)

df_num <- read_csv("/home/juliazhao/Documents/DataIncubator/section3/df_num.csv")
# get the correlation coefficients
cor_coe <- cor(df_num, use="pairwise.complete.obs")
cor_sorted <- as.matrix(sort(cor_coe[,'SalePrice'], decreasing = TRUE))
CorHigh <- names(which(apply(cor_sorted, 1, function(x) abs(x)>0.5)))
cor_numVar <- cor_coe[CorHigh, CorHigh]
corrplot.mixed(cor_numVar, tl.col="black", tl.pos = "lt")
```

