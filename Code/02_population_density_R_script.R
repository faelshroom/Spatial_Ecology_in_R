# Code for estimating population density

#installing the package

install.packages("spatstat")


#"beginner" to open a small manual

 beginner()
bei
> Planar point pattern: 3604 points
window: rectangle = [0, 1000] x [0, 500] metres
plot(bei)
#site for the colors, and can be also translated in html
#the change of color in this case doesn't work
#for an area we can have additional points

bei.extra
>List of pixel images

elev:
real-valued pixel image
101 x 201 pixel array (ny, nx)
enclosing rectangle: [-2.5, 1002.5] x [-2.5, 502.5] metres

grad:
real-valued pixel image

bei.extra
101 x 201 pixel array (ny, nx)
#what if i want only the elevation? link of the variable to the dataset
#$ is used as a sign of a linking like the letter S
plot(bei.extra$elev) 
#need of double squared braketes bc in maps is done like this, it's ruster
#in the case we want to subtract onlt a variable from a function
plot(bei.extra[[1]])
plot(bei.extra[[2]])

el<-bei.extra[[1]]

> el
real-valued pixel image
101 x 201 pixel array (ny, nx)
enclosing rectangle: [-2.5, 1002.5] x [-2.5, 502.5] metres

> plot(el) 
#passing from points which are vectors of coordinates to a map which is a raster

beidens<-density(bei)
plot(beidens)
#map of clumped individual is in the yellow part
#if we plot el we kind of have the opposite of the density
plot(el) 
#and we see it

#if we want to add points we use the function
plot(beidens)
points(bei)
density
function (x, ...) 
UseMethod("density")
<bytecode: 0x00000261c6c3ce48>
<environment: namespace:stats>
#he doesn't really like this that came out dunno why












enclosing rectangle: [-2.5, 1002.5] x [-2.5, 502.5] metres

#recap scorsa lezione
bei
Planar point pattern: 3604 points
window: rectangle = [0, 1000] x [0, 500] metres
> plot(bei)
> dmap<-density(bei)
> plot(dmap)
> #conversion of points to a map of the density of their distribution
> points(bei)
> plot(dmap)
> points(bei,cex=.5)
> #we've made smaller points this way
> points(bei,cex=.2)
> bei.extra
List of pixel images

elev:
real-valued pixel image
101 x 201 pixel array (ny, nx)
enclosing rectangle: [-2.5, 1002.5] x [-2.5, 502.5] metres

grad:
real-valued pixel image
101 x 201 pixel array (ny, nx)
enclosing rectangle: [-2.5, 1002.5] x [-2.5, 502.5] metres
> #2 maps inside the dataset, one is elev and the other is grad
> plot(bei.extra)
> #we'll try to stack them together, basics
el<-bei.extra[[1]]
> plot(el)
> el<-bei.extra$elev
> el
real-valued pixel image
101 x 201 pixel array (ny, nx)
enclosing rectangle: [-2.5, 1002.5] x [-2.5, 502.5] metres
> plot(el)
> #2 methods, both valid to do this procedure, either with the link $ or with the selection of only the [[1]] element
> #the second is the common notation
> #one object is dmap and the other is el, how to plot the dmap with el?
> plot(dmap)
> plot(el)
> #overwriting problem
> #function par is a parameter related to plots which creates a multiframe, putting inside the same graph several plots
> par(mf)
Errore: oggetto 'mf' non trovato

> #im following a certain scheme which we have to say to R
> par(mfrow=1,2)
Errore in par(mfrow = 1, 2) : 
  il parametro "mfrow" ha la lunghezza sbagliata

> par(mfrow=c(1,2))
> #he will show us a way to not use this concatenation
> plot(dmap)
> plot(el)
> par(mfrow=c(1,2))
> #nothing happens atm 
> #cazzata, l'ho già fatto prima, mette i due grafici uno accanto all'altro
> par(mfrow=c(1,3))
> plot(dmap)
> plot(el)
> par(mfrow=c(2,1))
> plot(dmap)
> plot(el)
> #u need to invert the number of rows and columns so this way you can do it
> #dev.off: Close a plotting device
> dev.off
function (which = dev.cur()) 
{
    if (which == 1) 
        stop("cannot shut down device 1 (the null device)")
    .External(C_devoff, as.integer(which))
    dev.cur()
}
<bytecode: 0x000001720bbd52f0>
<environment: namespace:grDevices>
> dev.off()
null device 
          1 
> #if we don't want the graphs to turn out all small then we should either use R and not Rstudio or zoom in
> cl<-colorRampPalette(c("maroon1","blue", "lightblue")) 
> plot(dmap,col=cl)
> #avoid rainbow color palette bc of colorblind people
cl<-colorRampPalette(c("maroon1","blue", "lightblue")) (100)
> plot(dmap,col=cl)
> cl<-colorRampPalette(c("maroon1","blue", "lightblue")) (3)
> plot(dmap,col=cl)
> cl<-colorRampPalette(c("maroon1","blue", "lightblue")) (100)
> plot(dmap,col=cl)
> cl<-colorRampPalette(c("maroon1","blue", "lightblue","darksagegreen1")) (100)
Errore in col2rgb(colors, alpha = alpha) : 
  nome colore 'darksagegreen1' non valido

> cl<-colorRampPalette(c("maroon1","blue", "lightblue","darkseagreen1")) (100)
> plot(dmap,col=cl)
> cl<-colorRampPalette(c("maroon1","blue", "lightblue","darkseagreen")) (100)
> plot(dmap,col=cl)
> cl<-colorRampPalette(c("maroon1","blue", "lightblue")) (100)
> plot(dmap,col=cl)
> #plot the dmap with two different color ramps one on top of the other
par(mfrow=c(2,1))
> plot(dmap,col=cl)
> plot(dmap,col=cln)

