library(data.table)
#create data table just like data frame 
DF=data.frame(x=rnorm(9),y=rep(c("a","b","c"),each=3),z=rnorm(9))
head(DF,5)
DT=data.table(x=rnorm(9),y=rep(c("a","b","c")),each=3,z=rnorm(9))
head(DT,3)
tables()
#calculating values for variable with expressin
#mean of column x and sum of column z
DT[,list(mean(x),sum(z))]
#specific values view in table
table(DF$y)
#Adding new column in table DT
DT[,w:=z^2]
table(DT)
#loggical operation for  new variable
DT[,a:=x>0]
#Merg two table ,data.table
DT1<-data.table(x=c("a","b","dt1"),y=1:4)
DT2<-data.table(x=c("c","d","dt2"),z=5:7)
setkey(DT1,x)
setkey(DT2,x)
merge(DT1,DT2)
