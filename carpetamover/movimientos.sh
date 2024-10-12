#!/bin/bash
#mover archivos
#

inpu_type=""
input_name=""
nput_text=""
read -p "Desea generar 1 directorio(1) o desea generar un archivo(2)?" input_type ##se almacena la decicion
if (( $input_type == 1)); then 
	read -p "ingrese el nombre del  directorio: " input_name
	mkdir -m 777 $input_name 
fi


if  (( $input_type == 2)); then 
	read -p "ingrese un nombre para el archivo: " input_name
	touch $input_name
       read -p "ingrese un texto para el archivo input_name:" input_text
      echo $input_text  >> $input_name
    echo "contenido del archivo:"
   cat $input_name  

fi
