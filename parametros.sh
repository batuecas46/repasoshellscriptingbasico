#!/bin/bash
#autor :julio 
#parametros



 nombre=$1
 edad=$2
ubicacion=$(pwd)

echo "mi nombre es : $nombre y tengo  $edad años"
echo "la cantidad de parametros enviados :$#"
echo "los parametros enviados por el usuario son: $*"
echo $ubicacion
