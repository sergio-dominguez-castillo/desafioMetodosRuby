# autor: Sergio Dominguez
# fecha: 23/06/2023
# modulo: introduccion a ruby

# Requerimiento 1, se solicita un programa que mediante el uso de métodos permita
# calcular el nuevo salario de un colaborador/a en función de un porcentaje mínimo de
# aumento establecido.

def calcular_nuevo_salario(val_salario, val_porc_aumento)
    # Requerimiento 1, fórmula salario + (salario * (incremento / 1000))
    salario = val_salario + (val_salario * (val_porc_aumento / 100))
end

puts("***Calcula nuevo salario, segun porcentaje de incremento ***")
puts "Ingresa tu salario: "
salario_actual = gets.chomp.to_f
puts "Ingresa tu porcentaje de incremento: "
porc_aumento = gets.chomp.to_f

salario_nuevo = calcular_nuevo_salario(salario_actual, porc_aumento)

puts("********************************")
puts("Tu salario es => #{salario_actual}")
puts("Tu porcentaje de incremento => #{porc_aumento} %")
puts("Tu nuevo salario es => #{salario_nuevo}")

