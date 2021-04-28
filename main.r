
"* ___Protocolo:___

1. Lenguaje utilizado: R

2. Tema: Condicionales (if y swtich)

3. Fuentes utilizadas:
  - [R-Bloggers](https://www.r-bloggers.com/)
- [R para Principiantes](https://bookdown.org/jboscomendoza/r-principia         ntes4/if-else.html)

4. Link del repositorio en GitHub:
  [Dia_42_27abril](https://github.com/dvillaunal/Dia_42_27abril)
_(recomendación: abrir en una ventana nueva)_"

## -------------------------------------------------------------------------------
# Si se cumple la condición se mostrara:
message("# Si se cumple la condición se mostrara:")
if(4>3){
  "4 siempre sera mayor que 3"
}

# En cambio, sino se cumple el if, no pasara nada:
message("\n# En cambio, sino se cumple el if, no pasara nada:")

if(4==5){
  "Este texto nunca se imprimira, mientras que 4<5, nunca iguales"
}



## -------------------------------------------------------------------------------
# Tomando del ejemplo anterior:
message("\n# Tomando del ejemplo anterior:")
if(4==5){
  cat("\nEste texto nunca se imprimira, mientras que 4<5, nunca iguales")
} else{
  cat("\nComo NO se cumple la condición se imprime lo que esta ddentro del else")
}


## -------------------------------------------------------------------------------
# Con la función mean() calcula un promedio de los valores de un vector (Solo Numeros):
message("\n# Con la función mean() calcula un promedio de los valores de un vector (Solo Numeros):")

## Definimos un vector de notas de un estudiante en una materia:
message("\n## Definimos un vector de notas de un estudiante en una materia:")

Notas_de_1Estudiante <- c(5.0,5.0,5.0,4.5,2.1,0.5,1.5,2,5,3.6413,3.1416, 2.78)
print(Notas_de_1Estudiante)


## Calculamos el promedio:
message("\n## Calculamos el promedio:")
promedio <- mean(Notas_de_1Estudiante) # Función que define el promedio de un vector
cat("el Promedio del vector Notas_de_1Estudiante es: ",promedio)


## -------------------------------------------------------------------------------
# Veamos si el estudiante perdio la materia nos notifique el sistema:
message("\n# Veamos si el estudiante perdio la materia nos notifique el sistema:")
message("\n(Asumamos que el estudiante pasa la materia con un 3.0)")

if(promedio >= 3.0){
  cat("El estudiante Paso la materia\n")
  cat("Su nota: ", promedio)
} else {
  cat("El estudiante reprobo la materia\n")
  cat("Su nota: ", promedio)
}


## -------------------------------------------------------------------------------
# Hacer un if para verificar con un operador condicional:
message("\n# Hacer un if para verificar con un operador condicional:")

if(1:10 < 5){
  cat("El codigo esta malo")
} else {
  print("Nunca me her obado")
}

"si sale un mensaje de warning, es común ya que avisa que solo utilizara el primer termino para evaluar la condición"

print("si sale un mensaje de warning, es común ya que avisa que solo utilizara el primer termino para evaluar la condición")



## -------------------------------------------------------------------------------
# Intentemos hacer el mismo if, solo que con ifelse:
message("\n# Intentemos hacer el mismo if, solo que con ifelse:")

ifelse(1:10 == 5, "Soy 5", "No Soy 5")


## -------------------------------------------------------------------------------
# Creamos un vector con la con numeros enteros pseudo-aleatorios:
message("\n# Creamos un vector con la con numeros enteros pseudo-aleatorios:")

v <- sample(1:1000, size = 100, replace = TRUE)

# Ahora con operadores evaluamos:
message("\n# Ahora con operadores evaluamos:")
## Si los valores de v son pares o son multiplos de 5 imprimirlos:
message("\n## Si los valores de v son pares o son multiplos de 5 imprimirlos")
message("ifelse(v %% 2 == 0 | v %% 5 == 0, v, print('No cumple la condición'))")

ifelse(v %% 2 == 0 | v %% 5 == 0, v, print("No cumple la condición"))


## -------------------------------------------------------------------------------
# Desde luego, esto es particularmente útil para recodificar datos.
message("\n# Desde luego, esto es particularmente útil para recodificar datos.")
## Definimos un vector binario (ceros y unos):
message("\n## Definimos un vector binario (ceros y unos):")

bin <- sample(0:1, size = 10, replace = TRUE)

## Ahora definimos, Hombre == 0 & Mujer == 1:
gener <- ifelse(bin == 1, "Mujer", "Hombre")

## Imprimimos el resultado:
message("\n## Imprimimos el resultado:")
cat(gener)


## -------------------------------------------------------------------------------
# Definimos nuestra primera sentecia switch:
message("\n# Definimos nuestra primera sentecia switch:")

s <- switch (3,
  case1 = "Primero",
  case2 = "Segundo",
  case3 = "Tercero",
  case4 = "Cuarto"
  )

## Imprimos el Resultado:
message("\n## Imprimos el Resultado:")
cat(s)


## -------------------------------------------------------------------------------
"> Pildora: runif(n, min = a, max =b)
> > n = numeros pseudoaletorios para generar
> > a & b = limite inferior y superior (intervalo donde se tomaran los numeros)"

# Cálculo Matemático:
message("\n# Cálculo Matemático:")

## Definimos nuestros numeros a evaluar:
message("\n## Definimos nuestros numeros a evaluar:")

n1 <- runif(1, min = 1, max = 10)
n2 <- runif(1, min = 1, max = 10)

v = "M"

cat("n1 =", n1, "n2 =", n2, "\n", "v = \"M\"", "\n")

# Definimos la sentencia Switch:

## Imprimimos el resultado del la sentencia:
message("\n## Imprimimos el resultado del la sentencia:")

resultado = switch (v,
  "S" = cat("Suma =", n1 + n2),
  "R" = cat("Resta =", n1 - n2),
  "D" = cat("División =", n1 / n2),
  "M" = cat("Multiplicación =", n1 * n2),
  "r" = cat("residuo =", n1 %% n2),
  "p" = cat("potencia =", n1 ^ n2),
  )

