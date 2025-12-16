#Code for performing time series analysis on satellite data
library(terra)
library(imageRy)
#listing files
im.list()
#on console shows the files, we will use the EN ones
#no2 levels during lockdown period used as e.g., sentinel date from copernicus, various satellites used

EN01 <-im.import("EN_01.png") #importing from the repository
plot(EN01) #see the file png
EN01<-flip("EN_01.png")
plot(EN01)
#reflectance?? i think used for maps from satellites, ratio between flux reflected and incident
#Shannon information: 1bit=0 or 1, concept that will change everything
#the radiometric resolution of EN01 is 8 bit, important to normalize the data before making comparisons
EN13 <-im.import("EN_13.png") 
plot(EN13)
EN13<-flip("EN_13.png")
plot(EN13)

diffEN13<-EN01[[1]] - EN13[[1]]
#difference between january value and march first layer
diffEN
plot(diffEN)
#higher values in january can be seen as the difference was bigger between the two
#we will use ridgeline plots now
#we add now additional apckages
library(ggridges)
library(ggplot2) #needed for the other package
#data of the area of the dolomites, near cortina
?im.ridgeline #???
ndvi<-im.import("NDVI_2020")
im.ridgeline(ndvi,scale=1)
names(ndvi)=c("02_feb","05_may",)

plot(ndvi)
im.ridgeline(ndvi,scale=2)
#scale 3,4,10
#Ice melt in Greenland
gr<-im.import("greenland")
gr
plot(gr)
names(gr)<-c("y2000","y2005","y2010","y2010")
difgr=gr[[1]] - gr[[3]]
plot(difgr)

library(viridis)
plot(difgr, col=magma(100))
im.ridgeline(gr,scale=2)

#additiona e.g. ridgeline plotting with external images, like from earth observatory by nasa
#p1 and p2 images on git, save p2 on pc, stands for period
setwd("namedirectory")
#set working directory fo image
p2<-rast("p2.png")
im.ridgeline(p2,scale=2)
p2_4 #numer of layer
#we can remove the 4th layer
p2<-c(p2$p2_1,p2$p2_2,p2$p2_3)
plot(p2) #so now we use the 3 layers
im.plotRGB(p2,1,2,3)
#the same can be done with p1

#tidyverse
plot1<-im.ggplot(p1[[1]])
plot2<-im.ggplot(p2[[1]])
plot3<-im.ridgeline(p1,scale=2)
plot4<-im.ridgeline(p2,scale=2)

(plot1+plot2) / (plot3+plot4)
# or (plot1 | plot2) / (plot3 | plot4)
#actually ridgeline not suppoerted
plot1+plot2+plot3+plot4


#add new library
library(patchwork)






