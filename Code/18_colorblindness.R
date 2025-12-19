#This code is about the problem of colorblindness in graphs
library(terra)
setwd(directory blabla)
#inserisci directory
vini<-rast("vinicunca.jpg")
plot(vini)
vini<-flip(vini)
plot(vini)
#github prof, cblindplot, in the package there's the R folder, cblind.plot.R, copy the function

cblind.plot(vini,cvd="protanopia") #cvd stands for color bo disease

#another e.g. can be with the map called rainbow
rb<-rast("rainbow.jpg")
rb<-flib(rb)
plot(rb)
cblind.plot(rb,cvd="protanopia")
cblind.plot(rb,cvd="deuteranopia")
cblind.plot(rb,cvd="tritanopia")
