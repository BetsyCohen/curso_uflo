
# Trabajando con Objetos y operadores -------------------------------------

## Crear vector -----------------------------------------------------------

edades<- c(25,30,35,12,42)

## Crear vector texto --------------------------------------------------------

provincia <- c("CABA", "Buenos Aires","Buenos Aires","Buenos Aires","Mendoza")

provincia

## Crear vector logico ---------------------------------------------------

mayores_de_16 <- edades > 16
mayores_de_16


#  Crear vcector de tipo factor -------------------------------------------

niveles_educativos_caracter <- c("Primario","Secundario","Terciario","Universitario")
niveles_educativos_factor <- factor(niveles_educativos_caracter)
niveles_educativos_factor

levels(niveles_educativos_factor)


# Crear data frame a partir de vectores -----------------------------------

nombres <- c("Ana", "Pedro", "Maria", "Juan", "Sofia")
edades <- c(25, 30, 22, 40, 35)
nivel_edu <- factor(c("Universitario", "Secundario", "Universitario", "Terciario", "Secundario"))

sociodata <- data.frame(
  nombre = nombres,
  edad = edades,
  educacion = nivel_edu)

sociodata


# seleccionar por posición

sociodata[1,]
sociodata[1,1]

# selecion por nombre de la columna

sociodata$edad

# operadores aritmetricos

edades+1

nivel_edu == "Universitario"
