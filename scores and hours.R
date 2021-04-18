# DOne by SASIDARAN S
#Read Data from the URL
csv_file=read.csv("http://bit.ly/w-data")
csv_file
#Linear Regression
a=csv_file$Hours
b=csv_file$Scores
relation=lm(b~a)
relation
# Constructing a plot with regressor line
plot(a,b,pch=16,col="blue")
plot(a,b,pch=16,col="blue",abline(relation))
# Predicting the values with the linear model
v=predict(relation)
v
predict(relation,data.frame(a=9.25))
# Finding the mean absolute error
library("Metrics")
mae(b,v)

