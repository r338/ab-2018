require(MASS)
gozlemsayisi=200
degiskensayisi=2
ortalama=rep(0,degiskensayisi)
kovaryansmat=matrix(0,degiskensayisi,degiskensayisi)
diag(kovaryansmat)=1
kovaryansmat[1,2]=0.9
kovaryansmat[2,1]=0.9
dat=mvrnorm(gozlemsayisi, ortalama, kovaryansmat)
par(mfrow=c(2,1))
plotlim=1.1*max(abs(dat))
plot(dat[,1],dat[,2],
     xlim=c(-plotlim,plotlim),
     ylim=c(-plotlim,plotlim),
     xlab='Dim 1',ylab='Dim 2',main='Veri')

abline(h=0,lty=2,lwd=2,col='red')
abline(v=0,lty=2,lwd=2,col='red')

#?princomp
pca=princomp(dat)
str(pca)

#plot(pca$scores[,1],rep(0,gozlemsayisi))
plot(pca$scores[,1],pca$scores[,2])

summary(pca)
screeplot(pca)
biplot(pca)