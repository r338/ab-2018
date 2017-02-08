##

##R'ın çalıştığı ana klasör
getwd()
dir()

##Ana klasörü değiştir
setwd("~/Documents/ab2017/")
dir()

"C:\mydocuments"
"C:\\mydocuments"
"C:/mydocuments"


## Katılımcı listesini oku
read.table("ab2017-katilimcilar.csv",header=TRUE)
read.table("ab2017-katilimcilar.csv",header=TRUE,sep=",")
read.table("~/Documents/ab2017",header=TRUE)

katilimcilar<-read.table("ab2017-katilimcilar.csv",header=TRUE,sep=",")
str(katilimcilar)

katilimcilar2<-katilimcilar

katilimcilar2$tekcift<-ifelse(katilimcilar2$BasvuruNo %% 2 == 0,"Cift","Tek")
katilimcilar2$tekcift<-as.factor(katilimcilar2$tekcift)

katilimcilar2$BasvuruNo*10

write.table(katilimcilar2,"ab2017-katilimcilar2.csv",sep=",",row.names=FALSE)

katilimcilar<-readxl::read_excel("ab2017-katilimcilar.xlsx")

katilimcilar<-read_excel("ab2017-katilimcilar.xlsx")


katilimcilar2<-katilimcilar
katilimcilar2$tekcift<-ifelse(katilimcilar2$BasvuruNo %% 2 == 0,"Cift","Tek")

openxlsx::write.xlsx(katilimcilar2,"ab2017-katilimcilar2.xlsx")
