#各种颜色可以在网上找
#hist直方图 plot 散点图
#查看R自带的数据
data("iris")
plot(iris$Sepal.Length, iris$Petal.Length, pch=23, col="blue")
?pch
#pch R里的点样式
#安装R包 CRAN Bioconductor GitHub

install.packages("car")

#library
#barplot 柱形图
head(VADeaths)

barplot(VADeaths,
        col = c("lightblue", "mistyrose", "lightcyan", "lavender", "cornsilk"),
        legend = rownames(VADeaths), beside = TRUE)
#pie 饼图
pie(VADeaths[,1],main="death rate of Rural Male in Virginia",border="yellow")

?car