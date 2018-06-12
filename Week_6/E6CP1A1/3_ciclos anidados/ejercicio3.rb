# Construir un programa que permita ingresar un número por teclado e imprimir
# la tabla de multiplicar del número ingresado. Debe repetir la operación hasta
# que se ingrese un 0 (cero).
# Ingrese un número (0 para salir): _

puts 'Please enter a number: '
user = gets.chomp!.to_i

table = ''

while (user != 0) do
    for f in 1..user do
        for c in 1..user do
            c == user ? (table += (f * c).to_s + "\n") : (table += (f * c).to_s + "\t")
        end
    end
    puts table
    user = gets.chomp!.to_i
end