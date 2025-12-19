#This code will calculate spatial variability in remotely sensed imagery
library(terra)
library(imageRy)
#list of files
im.list()
#import the file
sent<-im.import("sentinel.png")
#imported from Zenodo?, it's a spatial ruster, layer 1=NIR, layer 2=red, layer 3=green
im.plotRGB(sent, r=1,g=2,b=3)
#the graph is in the similaun glacier
im.plotRGB(sent, r=2,g=1,b=3)
im.plotRGB(sent, r=2,g=3,b=1)
#we're now using the focal function in the terra package, which uses a "moving window" w
sentmean<- focal(sent[[1]], fun="mean") #we calculate the central value starting from the original image
plot(sentmean)

#we now want to calculate the sd
nir<-sentsent[[1]]
nir #returns the class, dimension ecc of the vector
sd3<-focal(sent[[1]],w=3,fun="sd")
plot(sd3)

library(ggplot)
library(patchwork)
p1<-im.ggplot(nir)
p2<-im.ggplot(sentmean)
p3<-im.ggplot(sd3)
p1+p2+p3

#the sd is very dark, we use the viridis palette
library(viridis)
plot(sd3,col=magma(100))
#we see a higher amount of pink, higher varibility in terms of rocks, highest variability in terms of vegetation, passage between habitats
#we now use the im.ggplotRGB, not part atm of imageRy, we can use it from github
#search for imageRy, R code, im-ggplotRGB.R, and we find the function, copy it and put it in R
p0<-im.ggplotRGB(sent, r=2,g=1,b=3)
p0+p1+p2+p3

(p0|p1) /
(p2 + p3)
#not sure what this does, recalculates the maps?
sd5<-focal(nir,w=5, fun="sd")
p4<-im.ggplot(sd5)
p3 +p4 #sd in this case
p0+p3+p4 #we have the whole visualization of the RGB




