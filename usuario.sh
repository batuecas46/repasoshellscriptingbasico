#!/bin/bash
echo "Cual es tu nombre!"
read  USER_NAME 
echo "hola $USER_NAME"
echo "te creare un archivo  llamado ${USER_NAME}_file" touch "{$USER_NAME}_file"
