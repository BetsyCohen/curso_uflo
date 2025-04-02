# Ejercicio Práctico Complementario: Importando y Explorando Datos


# En este script, vamos a practicar:
# 1. Crear un Proyecto de R
# 2. Importar un dataset desde una URL online
# 3. Explorar el dataset importado con funciones clave


# --- Parte 1: Preparación Inicial: Proyecto y Librerías ---

# 1. Crea un Nuevo Proyecto de R:
#    - Andá  a 'Archivo' -> 'Nuevo Proyecto...'
#    - Hace clic en 'Nuevo Directorio' -> 'Proyecto de R'
#    - Ponele nombre a tu proyecto (ej: 'Exploracion_mas_cultura') y elegí una ubicación.
#    - Fijate que la opción 'Crear un repositorio Git' NO esté marcada
#    - Haz clic en 'Crear Proyecto'.

#   RStudio se va a reiniciar y con esto ya vas a estar trabajando dentro de tu nuevo proyecto
#   (en la esquina derecha superior arriba de tu Global Enviroment deberías ver el nombre de proyecto)

# 2. Al comienzo de cada proyecto Carga las Librerías necesarias:
#    Si no las tenes instaladas podes hacerlo con install.packages("nombre_libreria").
#    Acordate que solo INSTALAS una vez y que CARGASA la librería cada vez que inicias tu sesión


library(here)
library(dplyr) # Para glimpse()


# --- Parte 2: Importando Datos de la encuesta Programa Más Cultura ---

# El programa “Más Cultura” buscó potenciar el consumo de bienes y servicios culturales (cine, teatro,
# espectáculos en vivo, compra de libros, revistas, comics, instrumentos, artesanías, talleres, cursos, etc.)
# de las y los jóvenes de todo el país. A traves de una tarjeta virtual se otorgaron beneficios, descuentos y
# $5000 semestrales que se podian utilizar en espectáculos, comercios, espacios, eventos, cursos,
# talleres y otras actividades culturales.

# Para evaluar el Programa el ex Ministerio de Cultura llevó adelante un análisis de los consumos y una
# encuesta que que se implementó como parte de la estrategia de monitoreo y evaluación del Programa con el
# fin de conocer sus prácticas y hábitos culturales en meses previos a la activación de la tarjeta.
# Dicha tabla se enriqueció con el tipo de beneficios que los encuestados reciben de ANSES e información
# relacionada al uso que le dieron a la tarjeta Más Cultura.

# Vamos a importar los datos de la encuesta directamente desde una URL.


# 3. Defini la URL del dataset :
#    Ingresa al sitio de datos abiertos de Cultura https://datos.cultura.gob.ar/dataset/mas-cultura
#    Copia con el boton derecho de tu mouse la URL de descarga y asígnala al vector 'url_encuesta_mas_cultura'.

url_encuesta_mas_cultura <- "https://datos.cultura.gob.ar/dataset/3dc4ec3b-b563-4c29-9fc9-6da64d6117bd/resource/d0d752aa-5a38-4a5c-9617-f555383935f3/download/mas_cultura_205787.csv"


# 4. Importa el dataset directamente desde la URL:
#    Usa la función 'read.csv()' y la variable 'url_encuesta_mas_cultura' como argumento.
#    Asigna el data frame importado a un objeto llamado 'encuesta_online'.

#   Preguntas:
#   En nuestro uso de read.csv vamos a usar el parámetro "stringsAsFactor" y file encoding
#   accede al help de esta función escribiendo el nombre de la función en la solapa Help

#   ¿Qué hace el parámetro strinsAsFactors? probá los resultados de este script poniendo TRUE o FALSE
#   ¿Qué hace el parámetro fileEncoding?  Qué pasa si no indicamos el encoding con este archivo


encuesta_online <- read.csv(url_encuesta_mas_cultura,
                            stringsAsFactors = TRUE,
                            fileEncoding = "ISO-8859-1"
                            )

#    Imprimi las primeras filas para verificar la importación online:
head(encuesta_online)


# --- Parte 3: Exploración Inicial del Dataset  ---

# Ahora vamos a explorar el dataset que importamos usando las funciones de exploración.


# 5. Explora 'encuesta_online' con 'glimpse()':
#    Ejecuta 'glimpse()' en el data frame 'encuesta_online' y lee la salida en la consola.

glimpse(encuesta_online)

#    Preguntas: ¿Cuántas filas y columnas tiene el dataset?
#               ¿Qué tipos de datos predominan en las columnas? (chr, int, dbl, etc.)
#               Si tuvieras que evaluar el programa ¿qué preguntas harías y que variables eligirías para empezar a responderlas?



# 6. Explora 'encuesta_online' con 'str()':
#    Ejecuta 'str()' en el data frame 'encuesta_online' y compara con la salida de 'glimpse()'.

str(encuesta_online)

#    Pregunta: ¿En qué se diferencia la salida de 'str()' de la salida de 'glimpse()'?


# 7. Explora 'encuesta_online' con 'head()' y 'tail()':
#    Usa 'head()' y 'tail()' para ver las primeras y últimas filas del data frame 'encuesta_online'.
#    Proba a cambiar el argumento 'n' para ver más o menos filas (ej: head(encuesta_online, n = 15)).

head(encuesta_online)
tail(encuesta_online, n = 15)

#    Preguntas: Observando las primeras filas con 'head()', ¿podes identificar algunas variables y sus posibles significados?
#              ¿Te da 'head()' una idea general del tipo de datos que contiene la encuesta?


# 8. Explora 'encuesta_online' con 'summary()':
#    Ejecuta 'summary()' en el data frame 'encuesta_online' y observa el resumen estadístico.

#    Proba 'summary(encuesta_online[, 1:10])' para ver el resumen de las primeras 10 columnas, para empezar.
#    También podes probar 'summary(encuesta_online$P4)' para ver el resumen de una columna específica

summary(encuesta_online[, 1:10]) # Resumen de las primeras 10 columnas (para no saturar la consola)
# summary(encuesta_online) # (Opcional - para ver el resumen completo, ¡pero puede ser largo!)
summary(encuesta_online$consumo_libros) # Resumen de la columna 'P4' (ejemplo)


#    Pregunta: Observando el 'summary()' de las primeras columnas, ¿qué tipos de estadísticos se muestran?
#              Para las columnas numéricas, ¿qué información te dan los estadísticos como 'Mean', 'Median', 'Min', 'Max'?
#              ¿Cuántas personas fueron al cine por última vez en los últiumos 6 meses?
#              ¿Qué puedes inferir sobre la variable consumo_libros a partir de su 'summary()'?



# ¡Felicitaciones! Estas un paso más cerca de analizar políticas públicas en R como un profesional en sociología :)
