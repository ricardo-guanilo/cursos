## Para no tener que nombrar siempre a datos en las funciones
attach(datos)

##Activar librería stats
library(stats)

## Definición de modelo
mod <- lm(turistas ~ ingreso + distancia)

## Resumen del modelo ajustado
summary(mod)

#Análisis de residuales
#Lo primero es obtener los residuales

residuales=mod$residual
yajustado=mod$fitted.values

#Normalidad con gráfica de probabilidad normal

qqnorm(residuales,col="blue")
qqline(residuales, col="red")

#Normalidad con test Shapiro-Wilk:
shapiro.test(residuales)

#Homocedasticidad con gráfico de residuales
plot(yajustado,residuales,col="blue")
abline(h=0, col="red")

# Instalar y activar paquetes para ejecutar Prueba Breusch-Pagan Test
install.packages("lmtest")
install.packages("zoo")
library(lmtest)
library(zoo)

# Prueba Breusch-Pagan Test
bptest(mod)

#Datos atípicos

residestudentizado= rstudent(mod)
residestandarizado=rstandard(mod)

residestandarizado
residestudentizado

#deteccción de putos de influencia

options(max.print=1000000)
print(influence.measures(mod))
