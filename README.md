* ___Protocolo:___
  
  1. Lenguaje utilizado: R
  
  2. Tema: Condicionales (if y swtich)
  
  3. Fuentes utilizadas:
      - [R-Bloggers](https://www.r-bloggers.com/)
      - [R para Principiantes](https://bookdown.org/jboscomendoza/r-principia         ntes4/if-else.html)
  
  4. Link del repositorio en GitHub:
     [Dia_42_27abril](https://github.com/dvillaunal/Dia_42_27abril)
     _(recomendación: abrir en una ventana nueva)_


# Sentencia if en R:

El `if` en R, al igual que en otros lenguajes de programación, es una sentencia condicional.

_`if` (si) es usado cuando deseamos que una operación se ejecute únicamente cuando una condición se cumple._

## Sintaxis de la sentencia `if` en R:

Las condiciones if else son muy intuitivas. Debes definir una o más condiciones que quieres que se cumplan para ejecutar algún código y, si no, ejecutar otro código. Por lo tanto, la condición debe devolver TRUE si la condición se cumple o FALSE si no.

+ __SI__ esta condición es cierta, __ENTONCES__ haz estas operaciones.

el modelo para un `if` es:

> `if`(Condición){
>     operaciones_si_la_condición_es_`TRUE`
>
>} 


Si la condición se cumple, es decir, es verdadera `(TRUE)`, entonces se realizan las operaciones. En caso contrario, no ocurre nada y el código con las operaciones no es ejecutado.

+ __NOTA:__
    También puedes escribir sentencias if en una sola línea sin llaves, pero      generalmente no se recomienda, ya que podrías cometer errores de sintaxis     en el código.

> `if` (Condición) `print`("Código")

Por ejemplo, Le pedimos que si se cumple la condición, ejecute..

```{r}
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

```

## Sentencia `else`:

`else` complementa un `if`, pues indica qué ocurrirá cuando la condición no se cumple, es falsa (`FALSE`), en lugar de no hacer nada.

Un `if` con `else` es la manera de decirle a R:

+ __SI__ esta condición es es cierta, __ENTONCES__ haz estas operaciones, __DE   OTRO MODO__ haz estas otras operaciones.

## Sintaxis de un `if` con un `else`:

> `if`(Condición) {
>     Operaciones_si_la_condición_es_TRUE
>
>} `else` {
>    
>   operaciones_si_la_condición_es_FALSE
>
>}

--------------------------------------------------------------
__NOTA:__ Ten en cuenta que dentro de ‘Condición’ tienes que usar operadores condicionales, como AND (`&`), OR (`|`), o IGUAL A (`==`).
--------------------------------------------------------------

```{r}
# Tomando del ejemplo anterior:
message("\n# Tomando del ejemplo anterior:")
if(4==5){
  cat("\nEste texto nunca se imprimira, mientras que 4<5, nunca iguales")
} else{
  cat("\nComo NO se cumple la condición se imprime lo que esta ddentro del else")
}
```

## Ejemplos:

```{r}
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
```


Ahora deseamos ver que si el estudiante reprobo la materia Nos muestre un mensaje de perdida
(Asumamos que el estudiante pasa la materia con un 3.0)

```{r}
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
```

## Sentencia `ifelse`:

La función `ifelse()` nos permite vectorizar `if`, `else`. En lugar de escribir una línea de código para cada comparación, podemos usar una sola llamada a esta función, que se aplicará a todos los elementos de un vector.

Si intentamos usar `if else` con un vector, se nos mostrará una advertencia:

Este mensaje nos dice que sólo se usará el primer elemento del vector para evaluar su la condición es verdadera y lo demás será ignorado.

En cambio, con `ifelse` se nos devolverá un valor para cada elemento de un vector en el que la condición sea `TRUE`, además nos devolverá otro valor para los elementos en que la condición sea `FALSE`.



```{r}
# Hacer un if para verificar con un operador condicional:
message("\n# Hacer un if para verificar con un operador condicional:")

if(1:10 < 5){
  cat("El codigo esta malo")
} else {
  print("Nunca me her obado")
}

"si sale un mensaje de warning, es común ya que avisa que solo utilizara el primer termino para evaluar la condición"

print("si sale un mensaje de warning, es común ya que avisa que solo utilizara el primer termino para evaluar la condición")

```


En cambio, con ifelse se nos devolverá un valor para cada elemento de un vector en el que la condición sea TRUE, además nos devolverá otro valor para los elementos en que la condición sea FALSE.

### Sintaxis:

> ifelse(vector, valor_si_TRUE, valor_si_es_FALSE)


```{r}
# Intentemos hacer el mismo if, solo que con ifelse:
message("\n# Intentemos hacer el mismo if, solo que con ifelse:")

ifelse(1:10 == 5, "Soy 5", "No Soy 5")
```

También podemos evaluar cuando se cumplen las condiciones con operadores relacionales

### Pildora Función `sample()`:

> `sample(Min:Max, size = Tamaño del vector a crear)`
>
> `muestra <- Min:Max` Rango para selecionar numeros
>
> > Si la muestra es mayor a la población utlice: `replace = FALSE`
>
> `sample(Min:Max, size = Tamaño del vector, replace = FALSE)`

### Ejemplos:

```{r}
# Creamos un vector con la con numeros enteros pseudo-aleatorios:
message("\n# Creamos un vector con la con numeros enteros pseudo-aleatorios:")

v <- sample(1:1000, size = 100, replace = TRUE)

# Ahora con operadores evaluamos:
message("\n# Ahora con operadores evaluamos:")
## Si los valores de v son pares o son multiplos de 5 imprimirlos:
message("\n## Si los valores de v son pares o son multiplos de 5 imprimirlos")
message("ifelse(v %% 2 == 0 | v %% 5 == 0, v, print('No cumple la condición'))")

ifelse(v %% 2 == 0 | v %% 5 == 0, v, print("No cumple la condición"))
```

__Desde luego, esto es particularmente útil para recodificar datos.__

```{r}
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
```

----------------------------------------------------------
# Sentencia `switch`:

* Una sentencia `switch` permite comprobar la igualdad de una variable con     una lista de valores. Cada valor se denomina caso, y la variable que se      conmuta se comprueba para cada caso.

_Las Sentencias Switch Case son un sustituto de las largas Sentencias If que comparan una variable con varios valores integrales. Switch case en R es una sentencia de bifurcación multidireccional. Permite comprobar la igualdad de una variable con una lista de valores._

+ __La sentencia Switch sigue el enfoque de mapear y buscar sobre una lista    de valores.__

## Sintaxis:

La sintaxis básica para crear una sentencia `switch` en R es:

> switch(expresion, caso_1, caso_2, caso_3,...,caso_n)

## Reglas de `switch`:

__Las siguientes reglas se aplican a una sentencia__ `switch`:

+ Si el valor de la expresión no es una cadena de caracteres, se convierte en   un número entero.

+ Se puede tener cualquier número de sentencias case dentro de un switch. Cada   caso va seguido del valor a comparar y de dos puntos.

+ Si el valor del entero está entre 1 y n_args()-1 (El número máximo de         argumentos)entonces se evalúa el elemento correspondiente de la condición     `case` y se retorna el resultado.

+ Si la expresión se evalúa como una cadena de caracteres, entonces esa cadena   coincide (exactamente) con los nombres de los elementos.

+ Si hay más de una coincidencia, se retorna el primer elemento coincidente.

+ No se dispone de ningún argumento por defecto.

+ En el caso de que no haya ninguna coincidencia, si hay un elemento sin        nombre de ... se retorna su valor. (Si hay más de un argumento de este tipo   se retorna un error).

## Diagrama de Flujo:

![](https://www.tutorialspoint.com/r/images/r_switch_statement.jpg)

## Ejemplos:

```{r}
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
```

### Función `runif`:

> Pildora: runif(n, min = a, max =b)
> > n = numeros pseudoaletorios para generar
> > a & b = limite inferior y superior (intervalo donde se tomaran los numeros)

```{r}
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


message("\n## Imprimimos el resultado del la sentencia:")

resultado = switch (v,
  "S" = cat("Suma =", n1 + n2),
  "R" = cat("Resta =", n1 - n2),
  "D" = cat("División =", n1 / n2),
  "M" = cat("Multiplicación =", n1 * n2),
  "r" = cat("residuo =", n1 %% n2),
  "p" = cat("potencia =", n1 ^ n2),
  )
```
