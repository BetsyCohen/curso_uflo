# Ejercicio Práctico Complementario: Objetos y Operadores en R

# ¡Bienvenidos a la práctica con objetos y operadores en R!

# En este script, vamos a crear y manipular vectores y data frames,
# y a usar diferentes tipos de operadores.


# --- Parte 1: Vectores y Operadores Aritméticos ---

# 1. Crea un vector llamado 'ingresos_hogares' con los siguientes valores (en miles de pesos):
#    25, 32, 18, 45, 28, 35, 22

ingresos_hogares <- c(25, 32, 18, 45, 28, 35, 22)
ingresos_hogares  # Imprime el vector en la consola para verificar

# 2. Calcula el ingreso promedio de los hogares usando la función 'mean()'
ingreso_promedio <- mean(ingresos_hogares)
ingreso_promedio # Imprime el ingreso promedio

# 3. Aumenta todos los ingresos en un 10% debido a un ajuste por inflación.
#    Usa un operador aritmético para multiplicar cada elemento del vector por 1.10
ingresos_ajustados <- ingresos_hogares * 1.10
ingresos_ajustados # Imprime los ingresos ajustados

# 4. Calcula la suma total de los ingresos ajustados usando la función 'sum()'
suma_ingresos_ajustados <- sum(ingresos_ajustados)
suma_ingresos_ajustados # Imprime la suma total

# --- Parte 2: Vectores y Operadores Relacionales ---

# 5. Crea un vector llamado 'edades_encuestados' con las siguientes edades:
#    35, 28, 42, 22, 50, 31, 25

edades_encuestados <- c(35, 28, 42, 22, 50, 31, 25)
edades_encuestados # Imprime el vector de edades

# 6. Identifica qué edades son menores de 30 años.
#    Usa el operador relacional '<' (menor que) para comparar el vector 'edades_encuestados' con el número 30.
menores_de_30 <- edades_encuestados < 30
menores_de_30 # Imprime el vector lógico resultante

# 7. ¿Cuántos encuestados son menores de 30 años?
#    Usa la función 'sum()' en el vector lógico 'menores_de_30'.
#    (TRUE se trata como 1 y FALSE como 0 en las operaciones numéricas)
cantidad_menores_30 <- sum(menores_de_30)
cantidad_menores_30 # Imprime la cantidad

# 8. Identifica qué edades son mayores o iguales a 40 años.
#    Usa el operador relacional '>=' (mayor o igual que).
mayores_o_igual_40 <- edades_encuestados >= 40
mayores_o_igual_40 # Imprime el vector lógico

# --- Parte 3: Data Frames y Selección ---

# 9. Crea un data frame llamado 'datos_sociodemograficos' con las siguientes columnas:
#    - 'nombre':  c("Sofia", "Mateo", "Valentina", "Diego", "Isabella", "Lucas", "Martina")
#    - 'edad':  vector 'edades_encuestados' que ya creaste
#    - 'ingreso': vector 'ingresos_hogares' que ya creaste
#    - 'nivel_educativo': factor(c("Universitario", "Secundario", "Primario", "Universitario", "Terciario", "Secundario", "Universitario"))

datos_sociodemograficos <- data.frame(
  nombre = c("Sofia", "Mateo", "Valentina", "Diego", "Isabella", "Lucas", "Martina"),
  edad = edades_encuestados,
  ingreso = ingresos_hogares,
  nivel_educativo = factor(c("Universitario", "Secundario", "Primario", "Universitario", "Terciario", "Secundario", "Universitario"))
)
datos_sociodemograficos # Imprime el data frame completo

# 10. Selecciona y muestra solo la columna 'nombre' del data frame usando '$'
nombres_solo <- datos_sociodemograficos$nombre
nombres_solo # Imprime solo la columna 'nombre'

# 11. Selecciona y muestra las columnas 'nombre' y 'edad' del data frame usando corchetes '[]'
nombre_edad <- datos_sociodemograficos[ , c("nombre", "edad")] # O también: datos_sociodemograficos[ , 1:2]
nombre_edad # Imprime las columnas 'nombre' y 'edad'

# 12. Selecciona y muestra solo la primera fila del data frame usando corchetes '[]'
primera_fila <- datos_sociodemograficos[1, ]
primera_fila # Imprime la primera fila

# 13. Selecciona y muestra el valor de la edad de 'Valentina' (tercera fila, columna 'edad')
edad_valentina <- datos_sociodemograficos[3, "edad"] # O también: datos_sociodemograficos$edad[3]
edad_valentina # Imprime la edad de Valentina




