#!/bin/bash
#condicionales bash   con "    case  "
#
 opcion=""
 read -p "Ingrese una opcion [A-B]: " opcion


 case $opcion in
	 "A") echo "elegistes A";;
	 "B") echo "elegistes B" ;;
	 [C-Z]) echo "elegistes otras opciones ni admitidas" ;;

       *) echo "por favor cacaracteres permitidos A-B"
esac



   nombres=""

 read -p "ingrese tu nombre [hombres-mujeres:]" nombres

   case  $opcion in 
	   "hombres") echo "elegistes nombres de hombres";;
	   "mujer") echo "elegistes nombres de mujer";;
	   [apodos]) echo "no es un nombre";;
	*) echo "por favor ingresa nombres permitidos"

esac
