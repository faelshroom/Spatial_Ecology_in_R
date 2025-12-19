#This code is related to multivariate analysis of RS data
library(terra)
library(imageRy)
library(ggplot)
library(patchwork)
library(viridis)

#we're using the sentinel data
sent<-im.import("sentinel.png")

p1<-im.ggplot(sent[[1]])
p2<-im.ggplot(sent[[2]])
p3<-im.ggplot(sent[[3]])
p1+p2+p3

#we can pair the image
pairs(sent)
#we rename the graphs we get, found when asked for the info on sent vector, like this:
sent
names(sent)<-c("b01_nir","b02_red","b03_green")
pairs(sent)
#im.pca, input image, number of samples and number of components
sentpc<-im.pca(sent) #used to make the actual calculation, pc stands for principal component, pca principal component analysis
sentpc
#we use the first pc of the set
pcsd3<-focal(sentpc[[1]],w=3, fun="sd")
plot(pcsd3)
sd3<-focal(sent[[1]],w=3,fun="sd") #fun stands for function
im.ggplot(sd3)
im.ggplot(pcsd3)
p1+p2
