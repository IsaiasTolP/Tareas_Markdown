#!/bin/bash

####################################
#
# Nombre: Gestión_software.sh (?)
# Autor: Isaías
#
# Objetivo: Gestionar paquetes de sofware de Linux
#
# Entradas: El nombre del paquete
# Salidas: La orden seleccionada (Versión, reinstalación, actualización, eliminar, purgar)
#
# Historial:
#        2024-02-07: Versión 1
#
####################################

package_name=$1

while [ -z "$package_name" ]
do
    read -p "Introduzca el nombre de un paquete: " package_name
done

sudo apt-get update