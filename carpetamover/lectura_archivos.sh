#!/bin/bash
#lectura de archivos
#

 input_name=$1
  echo "##########lectura de archivo###################"
 cat $input_name
 echo "######lectura de archivo###########lineea x linea con #"
 echo "     I    F   S   iternal separacion lineas"
 while IFS= read line
 do 
	 echo "===$line====linea xlinea"
  done < $input_name
