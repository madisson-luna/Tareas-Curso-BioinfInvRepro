#### Script de Madisson del ejercicio maices de la uni 6

#Primero carga el archivo

maiz<-read.delim("../meta/maizteocintle_SNP50k_meta_extended.txt")
View(maiz)

##¿Qué tipo de objeto creamos al cargar la base?
class(maiz)

##¿Cómo se ven las primeras 6 líneas del archivo?
head(maiz)

##¿Cuántas muestras hay?
nrow(maiz)

##¿De cuántos estados se tienen muestras?
length(levels(maiz$Estado))

##¿Cuántas muestras fueron colectadas antes de 1980?
sum(maiz$A.o._de_colecta<1980, na.rm=TRUE)

##¿Cuántas muestras hay de cada raza?
table(maiz$Raza)
 ## en total?
length(levels(maiz$Raza))

##En promedio ¿a qué altitud fueron colectadas las muestras?
mean(maiz$Altitud)

##¿Y a qué altitud máxima y mínima fueron colectadas?
max(maiz$Altitud)
min(maiz$Altitud)

##Crea una nueva df de datos sólo con las muestras de la raza Olotillo
olotillodf<-maiz[maiz$Raza=="Olotillo", ]
View(olotillodf)

##Crea una nueva df de datos sólo con las muestras de la raza Reventador, Jala y Ancho
x<-maiz$Raza %in% c("Reventador", "Jala", "Ancho") ###probar pato<-maiz$Raza== c("Reventador", "Jala", "Ancho")
otromaiz<-maiz[x, ] ### hacer la df con otromaiz<-as.data.frame(pato)
View(otromaiz)

##Escribe la matriz anterior a un archivo llamado "submat.cvs" en /meta.
write.csv(otromaiz, file= paste0(getwd(), "/../meta/submat.csv")) 
#Nota: es mejor usar pste0 para evitar errores con espacios 


