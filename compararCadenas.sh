#!/bin/bash
#comparacion de cadena 

 string=""
 string2="hola, mundo"

 if [ -z  "$string" ] 
  then
        echo  la cadena esta vacia  

 fi 

  if [ -n "$string2" ] 
  then 

          echo   la cadena no esta vacia: $string2

  fi


  cadena=""
  cadena2="hola, mundo"

   if [ "${#cadena}" -gt 0 ]
   then
    echo la cadena esta \$cadena contiene mas de cero caracteres
   fi

   if [ "${#cadena2}" -gt 0 ]
then 
	echo la cadena  \$cadena2 contienes mas de cero caracteres
   fi


  name="julio"

  if [ $USER = "$name" ] #es la recomendada  para ser compatibles con todos los sistemas
   then
      echo el usuario $USER concide con el nombre $name comparado con test	 
  fi

   if [[ $USER == "$name" ]]

    then
   echo el usuario $USER  concide con el nombre $name comparado con bashismo [[ ]].  

   fi
