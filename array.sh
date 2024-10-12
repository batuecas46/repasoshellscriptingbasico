#"/bin/bash
#array y ciclos
 numeros=(1 2 3 4 5 6 7 8 )
 nombre=(julio juan  marita  rosa miguel)
 rangos=({A..Z} \  {20..30})

echo "############ imprmir todos los valores del array "
echo "   Arehlos de nombres${numeros[*]}"

echo " Arreglos de nombre${nombre[*]}"
echo " Arreglos de rango ${rangos[*]}"


echo "tamaño de arreglo nuemros: ${#numeros[*]}"

echo "tamaño de arreglo nombre: ${#nombre[*]}"

echo "tamaño de arreglo rangos: ${#rangos[*]}"


echo "===imprimir un elemento del arrglo===="

echo "elemnto numero 3 del arreglo numeros: ${numeros[3]} "

echo "elemnto numero 3 del arreglo nombres: ${nombre[3]} "

echo "elemnto numero 3 del arreglo rangos: ${rangos[3]} "



  echo "manipular los arreglos "



  unset numeros[0]  ## es para eleminar un ele especifico

echo "Arreglo de numeros :${numeros[*]}"

echo "ahora le volvemos a poner el lugar "
numeros[0]=1

echo "Arreglo de numeros :${numeros[*]}"


echo  "================itercacion for=========== "

for num in ${numeros[*]} 
do
   echo " numeros  :$num"
done


echo "==========================================="


for ((i=0; i<${#numeros[*]}; i++))
do
	echo "numero ${numeros[i]}"
done


