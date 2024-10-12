#!/bin/bash
#funciones en bash
#
#hola_mundo no puede llamarse la funciones antes en bash  

hola_mundo () {
	echo "hola mundo"

}

parametros () {
	echo "hola soy $1 y sucribite a $2"
}
 read -p "ingrese su nombre: " nombre
 read -p "ingrese el nombre de su canal: " canal

 parametros $nombre $canal
 hola_mundo
