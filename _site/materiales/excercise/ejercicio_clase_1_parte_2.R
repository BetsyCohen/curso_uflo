# Ejercicio Práctico Complementario: Explorando la Interfaz de RStudio

# ¡Bienvenidos a la cocina de datos de RStudio!

# 1. Interactuando con la Consola como una Calculadora 🧮

# La consola es tu espacio interactivo. ¡Vamos a usar R como calculadora!

# Propbá estas operaciones en la CONSOLA (Panel inferior izquierdo) y observa los resultados:

1 + 1
2 * 5
10 / 2
3 ^ 2  # Elevar al cuadrado
sqrt(16) # Raíz cuadrada

# También podes probar operaciones un poco más complejas:
(20 + 10) * 3
log10(1000) # Logaritmo base 10

# ¡Experimenta con tus propias operaciones! ¿Qué otras funciones matemáticas conoces?


# 2. Creando tu Primer Script: "Mi_primer_script.R" 📝

# Ahora, vamos a "guardar nuestra receta" creando un script.

# Ve a 'Archivo' -> 'Nuevo Archivo' -> 'Script de R' (Panel superior izquierdo).
# Se abrirá un nuevo panel: ¡el Editor de Scripts!

# Escribí los siguientes comandos en tu script (Panel superior izquierdo, el nuevo archivo):

# Asignando valores a variables (¡Ingredientes a la alacena!):
nombre_curso <- "Análisis de Datos 1"
anio <- 2025

# Imprimiendo variables en la consola (Mostrando en la mesada):
nombre_curso # Escribí 'nombre_curso' y presiona 'Ctrl + Enter' o 'Cmd + Enter' para ejecutar esta línea
print(nombre_curso) # Otra forma de imprimir

# Creando un pequeño resumen de texto (Preparando un plato sencillo):
cat("Bienvenido/a al curso de", nombre_curso, "en el año", anio, "\n") # 'cat()' permite concatenar y mostrar texto


# ¡Guardá tu script! Ve a 'Archivo' -> 'Guardar Como...' y nómbralo 'Mi_primer_script.R'
# (Elige una carpeta donde guardar tus scripts, por ejemplo, una carpeta llamada 'Scripts_R_Curso')


# 3. Explorando el 'Entorno' (Environment): ¡Tu Alacena Visible! 🧺

# Observa el panel 'Environment' (Panel superior derecho).
# Deberías ver las variables 'nombre_curso' y 'anio' que creaste.

# El 'Environment' te muestra todos los objetos (variables, datos, funciones, etc.)
# que has creado y que R tiene "en memoria" en este momento.


# 4. ¡Un Gráfico Sencillo para el Visor de Gráficos! 📊

# Vamos a crear un gráfico simple y verlo en el panel 'Plots' (Panel inferior derecho, pestañas).

# Ejecutá este código en tu script (o directamente en la consola):

plot(1:10) # Crea un gráfico de puntos con valores del 1 al 10 en el eje x e y por defecto

# ¡Observa el panel 'Plots'! Deberías ver un gráfico de puntos.

# Podes probar otros tipos de gráficos, por ejemplo:
hist(rnorm(100)) # Crea un histograma de 100 valores aleatorios de una distribución normal
boxplot(iris$Sepal.Length ~ iris$Species) # Boxplots comparando 'Sepal.Length' por 'Species' del dataset 'iris'


# 5. Proyectos en RStudio (Opcional - Para organizar tu Cocina 🍽️)

# Recorá que los 'Proyectos' de RStudio son como organizar tu cocina en carpetas y espacios de trabajo.
# Para proyectos más grandes y organizados, ¡usar proyectos es muy recomendable!

# Para crear un proyecto, ve a: 'Archivo' -> 'Nuevo Proyecto...'

# ¡Felicidades! Has dado tus primeros pasos explorando la interfaz de RStudio.
# ¡Sigue experimentando y "cocinando datos"!


# --- ¡Fin del Ejercicio Práctico! ---
