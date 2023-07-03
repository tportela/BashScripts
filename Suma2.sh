#!/bin/bash

# Lee el primer número ingresado por el usuario y lo guarda en la variable 'num1'.
read -p "Ingresa el primer número: " num1

# Lee el segundo número ingresado por el usuario y lo guarda en la variable 'num2'.
read -p "Ingresa el segundo número: " num2

# Realiza la suma de los dos números y guarda el resultado en la variable 'suma'.
suma=$((num1 + num2))

# Imprime el resultado en la consola.
echo "La suma es: $suma"
