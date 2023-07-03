#!/bin/bash

# Verifica si el archivo de registro del servidor existe
if [ ! -f "/var/log/apache2/access.log" ]; then
  echo "El archivo de registro del servidor no existe."
  exit 1
fi

# Solicita al usuario el nombre del archivo de salida
read -p "Ingrese el nombre del archivo de salida: " output_file

# Verifica si el archivo de salida ya existe
if [ -f "$output_file" ]; then
  read -p "El archivo de salida ya existe. ¿Desea sobrescribirlo? (y/n): " overwrite
  if [ "$overwrite" != "y" ]; then
    echo "Operación cancelada. No se sobrescribió el archivo."
    exit 1
  fi
fi

# Utiliza cut para extraer los campos relevantes del archivo de registro del servidor
cut -d ' ' -f 1,4,7 /var/log/apache2/access.log > "$output_file"

echo "Se ha generado el archivo de registros de acceso: $output_file"
