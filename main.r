# Definir los datos del problema
lineas_codigo <- 3589
dias_habiles <- 20
lineas_experto <- 230
lineas_novato <- 100
horas_experto_disponibles <- 3
horas_novato_disponibles <- 5
salario_experto <- 900
salario_novato <- 400

# Calcular el número óptimo de desarrolladores
# (los resultados fraccionarios se redondean hacia arriba)
desarrolladores_expertos <- ceiling((lineas_codigo / lineas_experto) / dias_habiles)
desarrolladores_novatos <- ceiling((lineas_codigo / lineas_novato) / dias_habiles)

# Calcular el costo total de mano de obra
costo_expertos <- desarrolladores_expertos * dias_habiles * horas_experto_disponibles * salario_experto
costo_novatos <- desarrolladores_novatos * dias_habiles * horas_novato_disponibles * salario_novato
costo_total <- costo_expertos + costo_novatos

# Imprimir resultados
cat("Número óptimo de desarrolladores expertos:", desarrolladores_expertos, "\n")
cat("Número óptimo de desarrolladores novatos:", desarrolladores_novatos, "\n")
cat("Costo total de mano de obra:", costo_total, "pesos\n")

