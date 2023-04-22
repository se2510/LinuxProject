#!/bin/bash
# Authors: Gonzalez Garcia David Elias and Cynthia Berenice
# 
# This command search a file in a especified directory.
# Este comando busca un archivo en un archivo especificado.

name=""         # File name
direc=""        # Directory
opcion=0        

echo "=*=*=*=*=*=*= B U S C A D O R    D E    A R C H I V O S =*=*=*=*=*=*="
echo "====================================================================="
echo " Bienvenide, $USER al buscador de archivos :D " 
echo "====================================================================="
echo "Tips para una buena busqueda!! :D : "
echo "~Recuerda que el nombre del archivo debe de obedecer sus mayusculas como minusculas :0"
echo "~Recuerda poner la extension del archivo!, sino lo buscara como carpeta... :P"
echo "~Recuerda no poner espacios :0"
echo "====================================================================="
read -p "Ingresa el nombre del archivo a buscar: " name
read -p "Ingresa "1" si quieres buscar por ruta relativa (quitando el /home/$USER) o "2" si quieres buscar por ruta absoluta: " opcion
read -p "Ahora ingresa en que directorio a partir del usuario deseas buscarlo: " direc

case $opcion in
	1)
        echo "Estas buscando en el directorio: /home/$USER/$direc/$name"
            # The "-e" flag, searches that directory, and if it exist, return TRUE
        if [ -e "/home/$USER/$direc/$name" ]; then
            echo "El archivo $name se encuentra en el directorio $direct! C:"
        else
            echo "El archivo $name no se encuentra en el directorio $direc! :C" 
        fi;;
	2)
        echo "Estas buscando en el directorio: $direc/$name"
		if [ -e "$direc/$name" ]; then
            echo "El archivo $name se encuentra en el directorio $direct! C:"
        else
            echo "El archivo $name no se encuentra en el directorio $direc! :C"
        fi;; #Los ; indican que ya terminó el caso (como el break)
	*)						# default.
		echo "Que has escrito?, fuera de las opciones...";;
esac

