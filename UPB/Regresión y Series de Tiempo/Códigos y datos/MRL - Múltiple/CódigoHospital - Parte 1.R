#Usaremos la función ggpairs, que requiere instalar y activar las librerías ggplot2 y GGally

#Instalación de las librerías (sólo se debe hacer la primera vez)
install.packages("ggplot2")
install.packages("GGally")

#Activación de las librerías (siempre se debe hacer) 
library("ggplot2")
library("GGally")

#Fijar data frame (así no tenemos que usar la estructura dataframe$variable en cada comando)
attach(datos)

#Construir gráfico de dispersión detallado
ggpairs(datos[,c(2:4,1)])

#También podemos hacer el ejercicio de obtener sólo los coeficientes de correlación, así:
cor(datos)
