train_data <- read.csv("/Users/demo/Documents/TOPOS/DOB_Permit_Issuance.csv")
  
library(ggplot2)
library(dplyr)

####Job Doctype
# x<-unique(train_data$Job.doc...)
# 
# count1<-length(which(train_data$Job.doc... == 1))
# count2<-length(which(train_data$Job.doc... == 2))
# count3<-length(which(train_data$Job.doc... == 3))
# count4<-length(which(train_data$Job.doc... == 4))
# count5<-length(which(train_data$Job.doc... == 5))
# count6<-length(which(train_data$Job.doc... == 6))
# count7<-length(which(train_data$Job.doc... == 7))
# count8<-length(which(train_data$Job.doc... == 8))
# count9<-length(which(train_data$Job.doc... == 9))
# count10<-length(which(train_data$Job.doc... == 10))
# count11<-length(which(train_data$Job.doc... == 11))
# count12<-length(which(train_data$Job.doc... == 12))
# 
# 
# y<-c(count1,count2,count3,count4,count5,count6,count7,count8,count9,count10,count11,count12)
# df<-data.frame(cbind(x,y))
# p<-ggplot(df, aes(x=df$x, y=df$y,fill=df$x)) +
#   geom_text(aes(label=df$y), vjust=-0.3, size=3.5)+
#   labs(x = "Job Doc Number",y ="count")+
#   geom_bar(stat="identity")
# 
# print(p)


#####Owner Business Type
# x<-unique(train_data$Owner.s.Business.Type)
# df<-data.frame(train_data$Owner.s.Business.Type)
# p<-ggplot(df, aes(x=df$train_data.Owner.s.Business.Type)) + 
#   labs(x = "Owner's Business type",y ="count")+
#   geom_histogram(stat="count")
# 
# print(p)


#####Worktype
# x<-unique(train_data$Work.Type)
# df<-data.frame(train_data$Work.Type)
# p<-ggplot(df, aes(x=df$train_data.Work.Type)) +
#   labs(x = "Work type",y ="count")+
#   geom_histogram(stat="count")
# 
# print(p)



####Filing Status
# x<-unique(train_data$Filing.Status)
# df<-data.frame(train_data$Filing.Status)
# p<-ggplot(df, aes(x=df$train_data.Filing.Status)) +
#   labs(x = "Filing Status",y ="count")+
#   geom_histogram(stat="count")
# 
# print(p)

###borough count
# x1<-unique(train_data$BOROUGH)
# t<-table(train_data$BOROUGH)
# df<-as.data.frame(t)
# Borough<-df$Var1
# p<-ggplot(df, aes(x=df$Var1, y=df$Freq,fill=Borough)) +
#   geom_text(aes(label=df$Freq), vjust=-0.3, size=3.5)+
#   labs(x = "Borough",y ="Count")+
#   geom_bar(stat="identity")
# print(p)


#Mapping all sites on google map
# LONGITUDE<-train_data$LONGITUDE
# LATITUDE<-train_data$LATITUDE
# data<-data.frame(train_data$BOROUGH,train_data$LONGITUDE,train_data$LATITUDE)
# 
# if(!requireNamespace("devtools")) install.packages("devtools")
# devtools::install_github("dkahle/ggmap", ref = "tidyup")
# ggmap(get_googlemap())
# register_google(key = 'AIzaSyBaWvzN-f15VOLu5TmuIIyBZDBAi1Xi3Mc') 
# geocode("New York City")
# register_google(key = 'AIzaSyBaWvzN-f15VOLu5TmuIIyBZDBAi1Xi3Mc') 
# 
# nycmap <- get_map(location="New York City",zoom = 10)
# nyc1 <- ggmap(nycmap)
# nyc1 <- nyc1 + geom_point(data=data, aes(data$train_data.LONGITUDE, data$train_data.LATITUDE, color = data$train_data.BOROUGH), alpha = .2, size = 1)
# nyc1 <- nyc1 + guides(color = guide_legend(title="BOROUGH",override.aes = list(alpha = 1, size = 3)))
# print(nyc1)

x<-data.frame(train_data$Issuance.Date)

z<-data.frame(substr(x$train_data.Issuance.Date,7,10))

a<-data.frame(table(z))

a<-a[-1,]

p<-ggplot(a, aes(x=a$z, y=a$Freq,fill=a$z)) +
geom_text(aes(label="*"), vjust=-0.3, size=3.5)+
geom_line()+
labs(x = "years",y ="Count")
print(p)
