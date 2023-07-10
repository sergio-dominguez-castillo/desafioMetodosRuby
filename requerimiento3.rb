# autor: Sergio Dominguez
# fecha: 23/06/2023
# modulo: introduccion a ruby

# Requerimiento 3, utilizando como base el ejercicio de cálculo de IMC en la guía de
# ejercicios, agregar en el cálculo de Obesidad los elementos faltantes dado que la
# obesidad se subdivide en 3 niveles. Deberás agregar a la lógica condicional los
# cálculos para esos tres niveles.

def formula_imc(val_peso, val_altura)
    imc = val_peso / val_altura ** 2
end

def calcular_imc(imc)
    puts("Tu índice de masa corporal es => #{imc}")
    if imc < 18.5
        puts "El índice calculado es Bajo de peso"
    elsif imc <= 18.5 || imc <= 24.9
        puts "El índice calculado es Normal"
    elsif imc <= 25.0 || imc <= 29.9
        puts "El índice calculado es Sobrepeso"
       
        # puts "El índice calculado es Obesidad"
        # Requerimiento 3, te compartimos los datos para las subcategorías asociadas a la
        # obesidad.
    # ○ Obesidad grado I: 30 - 34.9 - Moderado
    elsif imc <= 30.0 || imc <= 34.9
        puts "El índice calculado es Obesidad Grado I - Moderado"
    # ○ Obesidad grado II: 35 - 39.9 - Severo
    elsif imc <= 35.0 || imc <= 39.9
        puts "El índice calculado es Obesidad Grado II - Severo"
    # ○ Obesidad grado III: Más de 40 - Muy severo
    else
        puts "El índice calculado es Obesidad Grado III - Muy Severo"
    end
end

puts("***¡Bienvenido/a al sistema de cálculo IMC!***")
puts "Ingresa tu peso en Kilogramos: "
peso = gets.chomp.to_f
puts "Ingresa tu altura expresada en metros: "
altura = gets.chomp.to_f

resultado = calcular_imc(formula_imc(peso, altura))
puts(resultado)