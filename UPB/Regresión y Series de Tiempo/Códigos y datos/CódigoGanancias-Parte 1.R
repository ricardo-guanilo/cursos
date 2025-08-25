# Para ver si el conjunto de datos se leyó correctamente, escribimos el nombre que le asignamos:
datos

# Fijar base de datos, esto simplifica la escritura de comandos
attach(datos)

# Gráfica bonita

plot(	inv, gan,
      main="Ganancias vs Inversión en I+D", 	#El titulo del gráfico
      xlab="Inversión en I+D [Millones USD]",	#titulo eje x
      ylab="Ganancias empresa [Millones USD]",	#titulo eje y
      pch=19,		#Que sean bolitas - ensaya con otros numeros
      col="blue",		#El color de las bolitas - cambia el color
      cex=1.5,		#El tamaño de las bolitas - cambia el tamaño
      xlim=c(0,12),	#El rango de las X que aparece en el grafico
      ylim=c(0,45)	#El rango de las X que aparece en el grafico
)			#No olvides cerrar el paréntesis

# Instalación de paquete pastecs
install.packages("pastecs")

# Activación de paquete pastecs
library(pastecs)

# Estadística descriptiva de las variables
stat.desc(datos)

# Calculemos la correlación
cor(inv,gan)
