#x i okur
x=5
y=6 # y yi okudum
x*y # x ve y yi çarptım

#kullancıya sor
x=scan()
y=scan()
x*y

#birden fazla değer oku
fiyatlar=scan()
fiyatlar[2] #ikinci eleman
str(fiyatlar)
fiyatlar[4]='mustafa'
fiyatlar[5]=10

fiyatlar[1]*fiyatlar[2]
as.numeric(fiyatlar[1])*as.numeric(fiyatlar[2])

degerler=c(3,10,20,5,30)

girdi=10
if(girdi>5 && (girdi %% 5 ==0)){
  print("Beşten büyük")
} else if (girdi==3) {
  print("Üçtür")
} else {
  print("Beşten küçük")
  print(girdi*3)
}


for(i in 1:10){
  mesaj=paste0(i,'. sayı:',degerler[i])
  print(mesaj)
}

for(i in c(3,5,8)){
  mesaj=paste0(i,'. sayı:',degerler[i])
  print(mesaj)
}

facto=1
for(i in 1:5){
  facto=facto*i
}

gozlemsayisi=100000
set.seed(500)
x=runif(gozlemsayisi,-1,1)
y=runif(gozlemsayisi,-1,1)
plot(x,y,main="Noktalar")
noktalar=cbind(x,y)
plot(noktalar)
uzaklik=sqrt((x-0)^2+(y-0)^2)
dairenoktasayisi=sum(uzaklik<=1)
oran=dairenoktasayisi/gozlemsayisi
pitahmini=4*oran
print(pitahmini)


tahmin=function(gozlem=1000,
                grafik=FALSE,dongu=FALSE){
  
  x=runif(gozlem,-1,1)
  y=runif(gozlem,-1,1)
  
  if(dongu){
    uzaklik=rep(0,gozlem)
    for(m in 1:gozlem){
      uzaklik[m]=sqrt(x[m]^2+y[m]^2)
    }    
  } else{
    uzaklik=sqrt((x-0)^2+(y-0)^2)  
  }
  dairenoktasayisi=sum(uzaklik<=1)
  oran=dairenoktasayisi/gozlem
  pitahmini=4*oran
  
  if(grafik){
    plot(x,y,main='Noktalar',
         xlab='',ylab='',asp=1,
         col=(uzaklik<=1)+1,pch='.')    
  }
  return(pitahmini)
}
  
baslama=Sys.time()
tahmin(100000,TRUE)
bitis=Sys.time()
print(bitis-baslama)
  
listem=list(Ad=c("Mustafa","Berk"), Yas=c(10,15)

verilistesi=data.frame(Ad=c("Mustafa","Berk"), Yas=c(10,15))