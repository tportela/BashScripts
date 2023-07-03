#!/bin/bash

# Inicializa la variable 'contador' con el valor 1.
contador=1

# Mientras el contador sea menor o igual a 5, imprime el valor del contador y luego incrementa su valor en 1.
while [ "$contador" -le 5 ]; do
    echo "Contador: $contador"
    contador=$((contador + 1))
done
