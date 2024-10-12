#!/bin/bash
#variables
#la variable de entorno fue creada de la forma abrimos vim bash.rc
#JULIO="variable creada ejem" una vez creada en bashrc cerramos 
#y ejecutamos bash  esto es una variable de entorno para poder ser usada 
#en todo el sistema y las variables local dentro dele script solamente
#
#
#                 
julio="estoy dentro del scrip"
numA=2
numB=2

#julio seria una variable local 
echo "$JULIO"#variable d entorno
echo "$julio"#variable de usuario



echo "####         ARICTMETICOS          #################"


echo "operadores aricmeticos entre  $numA y $numB"
echo "$numA + $numB = " $((numA + numB))
echo "$numA - $numB = " $((numA - numB))
echo "$numA * $numB = " $((numA * numB))
echo "$numA / $numB = " $((numA / numB))

 echo "#####   RELACIONALES    ##################"
 echo "  0   es false   1  seria true "

echo "operadores Relacionales entre  $numA y $numB"
echo "$numA > $numB = " $((numA > numB))
echo "$numA < $numB = " $((numA < numB))
echo "$numA >= $numB = " $((numA >= numB))
echo "$numA <= $numB = " $((numA <= numB))
echo "$numA == $numB = " $((numA == numB))
echo "$numA != $numB = " $((numA != numB))

echo ###########   ASIGNACION  ##############

echo "operadores asignacion  entre  $numA y $numB"

echo "$numA += $numB = " $((numA += numB))
echo "$numA -= $numB = " $((numA -= numB))
echo "$numA *= $numB = " $((numA *= numB))
echo "$numA /= $numB = " $((numA /= numB))



