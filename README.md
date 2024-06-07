Trabajo practico 3

1.a) El codigo conhilos.py es mas rapido que sinhilos.py, por 1.6 segundos, es predecible ya que en el primer codigo los hilos se ejecutan al mismo tiempo
    y luego terminan , al contrario que sinhilos que se ejecutan y terminan las tareas una por una.
    
b) No son iguales, por la diferencia del procesador y sistema.

c) Al descomentar las lineas de codigo lo que sucede es que cambia el resultado, en el primer caso el acumulador, que es la variable global y el race condition,
   se termina cancelando ya que realizan, tanto el la suma como la resta, la misma cantidad de calculos. Pero al compartir la variable puede que en alguna ejecucion un hilo termine antes que otro. 
   Y en el segundo caso al agregarle un retraso fuerza el error y hace el race condition mas evidente. 
   Entonces la suma o la resta puede realizar mas calculos lo que deja el acumulador con resultado distinto de 0

2.a)
![Captura de pantalla_2024-05-16_16-36-32](https://github.com/MartinAndresGarnica/ASO2024TPs/assets/142854805/85953f4f-9080-4799-848c-14993cff3e87)


2.b)![punto b](https://github.com/MartinAndresGarnica/ASO2024TPs/assets/142854805/8ec61a4e-c19c-47ed-9892-55769a13053d)
