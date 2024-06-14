#! /bin/bash

salir="1"
echo "JUEGO PIEDRA PAPEL O TIJERA!"
sleep 0.5
echo "Podras ganarme?"
sleep 0.5

while [ $salir -eq 1 ]
  do
    echo "Introduce una opcion"
    sleep 0.5
cat <<myText
1. Piedra
2. Papel
3. Tijera
0. Salir del juego :(
myText
    read jugador 
    if [ $jugador -eq 0 ];
      then
      salir=0
    else
    if [ $jugador -eq "1" ] ||
       [ $jugador -eq "2" ] || 
       [ $jugador -eq "3" ] ||
       [ $jugador -eq "0" ];
    then 
    computadora=$(shuf -i 1-3 -n 1)


    if [ $jugador -eq $computadora ]; 
      then
        echo "Empate"
      elif  [ $jugador -eq "1" -a  $computadora -eq "3" ] || 
            [ $jugador -eq "2" -a  $computadora -eq "1" ] || 
            [ $jugador -eq "3" -a  $computadora -eq "2" ] ;
        then
          echo "Ganaste"
      else 
        echo "Perdiste"
    fi

    if [ $computadora -eq "1" ];
      then
        echo "Elegi Piedra"
      elif [ $computadora -eq "2" ];
        then
          echo "Elegi papel"
      else
        echo "Elegi Tijera"
    fi

    else
      echo "Valor erroneo"

  fi
  echo ""
  fi
done
