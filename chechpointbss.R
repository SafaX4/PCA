HR_comma_sep_1_
HR_comma_sep_1__standardize <- as.data.frame(scale(HR_comma_sep_1_[1:8]))
HR_comma_sep_1__standardize
HR_comma_sep_1_.mat <- as.matrix(HR_comma_sep_1__standardize)
cov.mat <- cor(HR_comma_sep_1__standardize)
pca <- prcomp(HR_comma_sep_1__standardize,center = T,scale. = T)
summary(pca)
library(ggfortify)
autoplot(pca, data = HR_comma_sep_1_, colour = 'salary')
