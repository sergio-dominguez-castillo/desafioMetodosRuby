# autor: Sergio Dominguez
# fecha: 23/06/2023
# modulo: introduccion a ruby

# Requerimiento 2, te solicitan un programa que simule el juego de “Adivina el
# número”. En este programa el computador va a elegir un número aleatorio y el
# usuario al seleccionar un número debe indicarle si ganó o perdió. La condición para
# ganar es que el número del computador debe ser igual al del jugador.
# El rango de número va entre 1 hasta n, tomando en consideración que mientras más
# amplio sea el rango más duradero será el juego.

# funcion que asigna valor al azar del computador
def numero_random (numfinal)
   rand_number = rand(1..numfinal)
end

# funcion compara los numeros
def compara_numeros(num_usuario, num_final)
  # genero numero al azar
  rand_number = numero_random(num_final)
  # comparacion de numero del usuario versus el computador
  if num_usuario == rand_number
    puts("************************************************")
    puts("Feliciraciones, adivinaste el numero ")
    puts("el rango de numeros fue desde el 1 al #{num_final}")
    puts("La maquina escogio el numero #{rand_number}")
    puts("tu escogiste el numero #{num_usuario}")
    puts("************************************************")
  else
    puts("************************************************")
    puts("por favor, sigue intendandolo")
    puts("el rango de numeros fue desde el 1 al #{num_final}")
    puts("La maquina escogio el numero #{rand_number}")
    puts("tu escogiste el numero #{num_usuario}")
    puts("************************************************")
  end
end

puts("*** Bienvenido/a al juego -> adivina el numero ***")
puts("Configuracion: Ingresa el numero final del rango a buscar: ")
numfinal = gets.chomp.to_i
puts("Ingresa tu numero: ")
tunumero = gets.chomp.to_i

jugar = compara_numeros(tunumero, numfinal)
