#mean(Student_score$Math) 
#mean(Student_score$English) 
 #mean(Student_score$Computer) 
#$代表从总体中抽出某部份

#apply(X, MARGIN, FUN, ...) x: 一个数组或者矩阵  MARGIN: 两种数值1或者2决定对哪一个维度进行函数计算  MARGIN=1: 操作基于行  MARGIN=2: 操作基于列 MARGIN=c(1,2): 对行和列都进行操作 FUN: 使用哪种操作，内置的函数有mean（平均值）、medium（中位数）、sum（求 和）、min（最小值）、max（最大值）， 

#which.max/min(total_score)  决定最大、最小值等的索引

#density 拟合曲线
#table 可以统计频数
#boxplot 箱线图 horizontal 水平箱线图

#stars 星线图

#stem()函数绘制茎叶图 

#QQ图：正态分位数图 散点图pairs 热力图 heatmap密度图plot


install.packages("ggplot2") 
library(ggplot2) 

help(package = "ggplot2") 

install.packages('ggplot2') 
library(ggplot2) 

ggplot(data=iris, mapping=aes(x=Sepal.Length, y=Petal.Length, color=Species, shape=Species, size=Species)) + geom_point() + geom_smooth(method=lm, se=FALSE, fullrange=TRUE) +scale_shape_manual(values=c(3, 16, 17)) +scale_color_manual(values=c('#999999','#E69F00', '#56B4E9')) +scale_size_manual(values=c(2,3,4)) 