#This is a comment ans will help humans understanding the code

naza=2+3
> naza<-2+3
> naza
[1] 5
> marco<-7+4
> marco
[1] 11
> naza + marco
[1] 16
> naza * marco
[1] 55
> naza^marco
[1] 48828125
> 2+3+7+4
[1] 16
> vale<-c(5,10, 13,20,30)
> vale
[1]  5 10 13 20 30
> elia c(2,5,10,40,70)
 elia<- c(2,5,10,40,70)
> elia
[1]  2  5 10 40 70
> plot(elia, vale)

#if i want to change the symbol and the color of the dots of the plot i'll use:
> plot(elia, vale, pch=19, col="blue")

#if i want to change the dimension of the points:
> plot(elia, vale, pch=19, col="blue",cex=2)
> plot(elia, vale, pch=19, col="blue",cex=0.5)
> plot(elia, vale, pch=19, col="blue",cex=2)
> plot(elia, vale, pch=19, col="blue",cex=2, xlab="Forest biomass",ylab="Leopard abundance")
