#!/bin/bash
#solo quiero que funcione 

nombre=""
edad=0
read -p "Ingreasa tu nombre:"  nombre
read -p "ingresa tu edad:"  edad
echo "ingresastes tu nombre y te llamas  $nombre "

echo "ingresastes tu edad  y tu tienes  $edad "

if [ $edad -lt 18 ]; then
echo "eres menor de edad todavia "

elif    [ $edad -ge 18 ] && [ $edad -lt  65 ] ; then
 echo "ERES adulto"
else 
 echo "eres una persona MAYOR"
fi





