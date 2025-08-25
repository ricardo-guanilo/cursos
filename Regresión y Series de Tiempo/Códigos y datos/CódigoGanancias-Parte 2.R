# Fijar base de datos, esto simplifica la escritura de comandos
attach(datos)

# Ajustar modelo
modelo <- lm(gan~inv)	# Lo guardo en una variable que llama modelo para ver más info

# Detalle de la estimación de parámetros
summary(modelo)		# Despliega la información importante

# ANOVA del modelo
anova(modelo)

## PARA VERIFICAR SUPUESTOS

#Creación y almacenamiento de tabla con valores predichos, residuales y residuales estandarizados.


##Verificación de supuestos - Normalidad

#Análisis gráfico - Q-Q Plot


#Instalar y activar paquete "stats" que incluye Prueba Shapiro-Wilk para evaluar la normalidad de los residuales 
install.packages("stats")
library(stats)

#Análisis numérico - Normalidad con test Shapiro-Wilk:


##Verificación de supuestos - Varianza constante

# Instalar y activar paquete olsrr para gráfico de residuales y Prueba Breusch-Pagan para verificar varianza constante de lso residuales
install.packages("olsrr")
library(olsrr)

#Análisis gráfico - Residuales estandarizados vs. predichos


#Análisis numérico - Prueba Breusch-Pagan

