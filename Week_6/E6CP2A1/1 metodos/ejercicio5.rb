# Crear un método que reciba como parámetro dos números enteros positivos
# e imprima los números pares que existen entre esos dos números.

def even_between_2_numbers(num1, num2)
  num1.upto(num2) { |i| puts i if i.even? }
  num2.upto(num1) { |i| puts i if i.even? }
end

even_between_2_numbers(17, 2)
