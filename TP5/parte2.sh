#!/bin/bash

echo "Genero segun el nombre"
echo "Ingrese un nombre"
read  nombre

# Se guarda en la variable url los datos que brinda la api del nombre ingresado

url=$(curl -s "https://api.genderize.io/?name=$nombre")

# Se hace un grep para buscar el patron geneder y cut extrae el genero usando " como delimitador

genero=$(echo $url | grep -o '"gender":[^,]*' | cut -d '"' -f 4)

# grep para buscar el patron probabilidad seguido de ":" obviando las "," y los "}" cut extrae la probabilidad
# usando ":" como delimitador

probabilidad=$(echo $url | grep -o '"probability":[^,^}]*' | cut -d ':' -f 2)

# if para pasar el genero a español

if [ $genero = "male" ]
    then
        genero="Hombre"
    elif [ $genero = "female" ]
        then
            genero="Mujer"
fi

if [ -n "$genero" ]; 
    then
        echo "El genero promedio del nombre $nombre es $genero con una probabilidad de $probabilidad"
    else
        echo "No se encontró información para el nombre $nombre"
fi