##Trabajo practico 3

1.a) El codigo conhilos.py es mas rapido que sinhilos.py, por 1.6 segundos, es predecible ya que en el primer codigo los hilos se ejecutan al mismo tiempo
    y luego terminan , al contrario que sinhilos que se ejecutan y terminan las tareas una por una.
    
b) No son iguales, por la diferencia del procesador.

c) Al descomentar las lineas de codigo lo que sucede es que cambia el resultado, en el primer caso el acumulador se termina cancelando ya que realizan,
   tanto el la suma como la resta, la misma cantidad de calculos. Y en el  caso segundo el tiempo aumenta muchisimo, al agregarle un retraso 
   puede que uno de los hilos termine mas rapido su tarea que otro entonces el resultado es distinto de 0.
