## ---- echo=FALSE, message=FALSE------------------------------------------
library(descriptr)
library(dplyr)

## ----screener------------------------------------------------------------
mt <- mtcars
mt[, c(2, 8:11)] <- lapply(mt[, c(2, 8:11)], factor)
mt[sample(1:nrow(mt), 12), sample(1:ncol(mt), 6)] <- NA
ds_screener(mt)

## ----summary-------------------------------------------------------------
ds_summary_stats(mtcars$mpg)

## ----cross---------------------------------------------------------------
ds_cross_table(mtcars$cyl, mtcars$gear)

## ----cross_group, fig.width=7, fig.height=7, fig.align='centre'----------
k <- ds_cross_table(mtcars$cyl, mtcars$gear)
plot(k, beside = TRUE)

## ----cross_stack, fig.width=7, fig.height=7, fig.align='centre'----------
k <- ds_cross_table(mtcars$cyl, mtcars$gear)
plot(k)

## ----cross_prop, fig.width=7, fig.height=7, fig.align='centre'-----------
k <- ds_cross_table(mtcars$cyl, mtcars$gear)
plot(k, proportional = TRUE)

## ----mosaic, fig.width=7, fig.height=7, fig.align='centre'---------------
k <- ds_cross_table(mtcars$cyl, mtcars$gear)
mosaicplot(k)

## ----ftable--------------------------------------------------------------
mt <- mtcars
mt$cyl <- as.factor(mt$cyl)
ds_freq_table(mt$cyl)

## ----ftable_bar, fig.width=7, fig.height=7, fig.align='centre'-----------
mt <- mtcars
mt$cyl <- as.factor(mt$cyl)
k <- ds_freq_table(mt$cyl)
barplot(k)

## ----fcont---------------------------------------------------------------
ds_freq_cont(mtcars$mpg, 4)

## ----fcont_hist, fig.width=7, fig.height=7, fig.align='centre'-----------
k <- ds_freq_cont(mtcars$mpg, 4)
hist(k)

## ----gsummary------------------------------------------------------------
mt <- mtcars
mt$cyl <- as.factor(mt$cyl)
ds_group_summary(mt$cyl, mt$mpg)

## ----gsum_boxplot, fig.width=7, fig.height=7, fig.align='centre'---------
mt <- mtcars
mt$cyl <- as.factor(mt$cyl)
k <- ds_group_summary(mt$cyl, mt$mpg)
boxplot(k)

## ----multistats----------------------------------------------------------
ds_multi_stats(mtcars, mpg, disp, hp)

## ----oway----------------------------------------------------------------
mt <- mtcars
mt[, c(2, 8:11)] <- lapply(mt[, c(2, 8:11)], factor)
ds_oway_tables(mt)

## ----tway----------------------------------------------------------------
mt <- mtcars
mt[, c(2, 8:10)] <- lapply(mt[, c(2, 8:10)], factor)
ds_tway_tables(mt)

