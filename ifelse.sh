#!/bin/bash

# Lee un número ingresado por el usuario y lo guarda en la variable 'numero'.
read -p "Ingresa un número: " numero

# Comprueba si el número es mayor que 10.
if [ "$numero" -gt 10 ]; then
    echo "El número es mayor que 10."
elif [ "$numero" -eq 10 ]; then
    echo "El número es igual a 10."
else
    echo "El número es menor que 10."
fi
