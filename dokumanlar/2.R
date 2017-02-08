require(MASS)
gozlemsayisi=200
degiskensayisi=2
ortalama=rep(4,degiskensayisi)
kovaryansmat=matrix(0,degiskensayisi,degiskensayisi)
diag(kovaryansmat)=1
kovaryansmat[1,2]=0.1
kovaryansmat[2,1]=0.1
dat=mvrnorm(gozlemsayisi, ortalama, kovaryansmat)
plotlim=1.1*max(abs(dat))
plot(dat[,1],dat[,2],
     xlim=c(-plotlim,plotlim),
     ylim=c(-plotlim,plotlim),
     xlab='Dim 1',ylab='Dim 2',main='Veri')

ortalama2=rep(-3,degiskensayisi)
datkume2=mvrnorm(gozlemsayisi, ortalama2, kovaryansmat)
points(datkume2[,1],datkume2[,2])

birlesik=rbind(dat,datkume2)
birlesik=scale(birlesik)
kume=kmeans(birlesik,2)
plot(birlesik[,1],birlesik[,2],col=kume$cluster)

kume=kmeans(birlesik,3)
plot(birlesik[,1],birlesik[,2],col=kume$cluster)

kume=kmeans(birlesik,3,nstart=10)
plot(birlesik[,1],birlesik[,2],col=kume$cluster)

karelerintoplami=rep(0,100)
kumelerarasitoplam=rep(0,100)
for(k in 1:100){
  kume=kmeans(birlesik,k,nstart=10)
  karelerintoplami[k]=kume$tot.withinss
  kumelerarasitoplam[k]=kume$betweenss
}
par(mfrow=c(2,1))
plot(karelerintoplami,type='line')
plot(kumelerarasitoplam,type='line')

image(birlesik)
image(t(birlesik))

rand=runif(nrow(birlesik))
ind=order(rand)
birlesik=birlesik[ind,]
image(t(birlesik))

kume=kmeans(birlesik,2)
yenisira=order(kume$cluster)
image(t(birlesik[yenisira,]))

mesafe=dist(birlesik[yenisira,])
mesafe=as.matrix(mesafe)
image(mesafe)


