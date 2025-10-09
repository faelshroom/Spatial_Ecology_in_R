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
