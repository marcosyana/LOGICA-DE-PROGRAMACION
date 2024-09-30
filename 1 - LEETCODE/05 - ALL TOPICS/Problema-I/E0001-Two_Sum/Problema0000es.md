TODO: Solución en Español

# 1. Suma de Dos

Dada una matriz de números enteros 'nums' y un número entero 'target', devuelve los índices de los dos números tales que sumen 'target' .

Puedes suponer que cada entrada tendrá exactamente una solución y no puedes usar el mismo elemento dos veces.

Puedes devolver la respuesta en cualquier orden.

> Ejemplo 1:


Entrada: nums = [2,7,11,15], target = 9
 Salida: [0,1]
 Explicación: Como nums[0] + nums[1] == 9, devolvemos [0, 1].

> Ejemplo 2:

Entrada: nums = [3,2,4], target = 6
 Salida: [1,2]

> Ejemplo 3:

Entrada: nums = [3,3], target = 6
 Salida: [0,1]

> Restricciones:

2 <= nums.length <= 104
-109 <= nums[i] <= 109
-109 <= target <= 109
Sólo existe una respuesta válida.
 

Seguimiento:  ¿Puedes idear un algoritmo que tenga una  complejidad menor que el tiempo? O(n2)

# Solucion

En un array o matriz cada elemento tiene una posicion eso se llama indice, entonces creamos un contador 'i' 

    i = 0   
    nums = [2,7,11,15] 
    
entonces la matriz quedaria asi:

    nums = [2, 7, 11, 15]
    target = 9

el indice ocupara en cada posicion

        i[0] = 2
        i[1] = 7
        i[2] = 11
        i[3] = 15

vemos la matriz y para q nos de el resultado de la suma de target seria

i[0] + i[1] = 2 + 7 = 9

para eso tenemos q recorrer nuestra matriz y sumar dos elementos que nos devuelda el resultado target = 9

ejemplo sumamos de la matriz el primer indice i[0] con el segundo indice i[1] y si nos da el resultado mostramos en un array los indices
sino buscamos en cada posicion hasta dar el resultado

# Nota: 
La complejidad O(n2) ocurre cuando usamos bucles anidados para comparar todos los pares posibles de elementos en un array. Es mucho menos eficiente que la solución O(n) que utiliza un 'Map' para realizar las búsquedas de manera más rápida y directa.

>lo resolvemos en el codigo