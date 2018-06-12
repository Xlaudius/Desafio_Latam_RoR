# El siguiente ejercicio busca calcular el factorial de 10.
# TIP: El resultado es 3628800.

multiplicacion = 1

11.times do |i|
  multiplicacion *= i if i != 0
end

puts multiplicacion
