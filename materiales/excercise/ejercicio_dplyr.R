# Ejercicio Unidad 3 Clase Introducción a Tidyverse ---------------------------

## Setup ----------------------------------------------------------------------
# Llamar a la librería tidyverse
library(tidyverse)

# URL de la base
url_data <- "https://catalogo.datos.gba.gob.ar/dataset/a9384c8f-5b36-494a-9301-1bebdd3f5d8d/resource/d100f776-5796-4095-a60f-96e2da5ff6cb/download/defunciones-maternas-2009_2023.csv"

# Cargar la base de datos
df <- read.csv(url_data, sep = ";")


# Pegamos un vistaso a la base
glimpse(df)


## 1. ¿Cuantas muertes hubo por año? ------------------------------------------

df %>%
  _______(anio) %>%
  ________(suma_cantidad = _____________)

## 2. Selecciona las columnas CIE10_codigo y CIE10_descripcion ¿Qué representan? ---


df %>%
  ______(CIE10_codigo,CIE10_descripcion)


## 3. Cuales son los tres municipios con mayor cantidad de muertes en 2021 ---------


df %>%
  _____(anio == _____) %>%
  _______(municipio_nombre.) %>%
  summarise(muertes_totales = ________) %>%
  _________(desc(________))


## 4. Agrupa la cantidad total de muertes segun clasificación y  --------------
## CIE10_descripcion. ¿Qué significan las categorías "Directa" e "Indirecta"
## en la variable clasificación? en relación a CIE10_descripcion

df %>%
  group_by(_______,CIE10_descripcion) %>%
  summarise(muertes_totales = ______________)

