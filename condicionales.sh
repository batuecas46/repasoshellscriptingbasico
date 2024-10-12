#!/bin/bash
#condicionales  if [ ] 
#               fi
#
name=""
age=0
year=0
read -p "ingresa un nombre:" name 
read -p "ingresa tu edad:" age
read -p "ingresa el año actual:" year
echo " hola mi nombre es $name y tengo $age años "

echo "######   condicionales  #####################"

if (( $age >= 18)); then
  echo "$name, Eres mayor de edad"
else 
 echo "$name, No  eres mayor  de edad"

fi

echo "#########################################"

if [ $age -ge 18 ] && [ $year -eq 2024 ]; then 
  echo "$name, Eres mayor de edad y puedes votar"
else
  echo "$name, No puedes votar todavia " 	

fi

