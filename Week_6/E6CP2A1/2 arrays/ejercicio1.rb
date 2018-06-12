# Dado el array:
# 1. Mostrar en pantalla el primer elemento.
# 2. Mostrar en pantalla el último elemento.
# 3. Mostrar en pantalla todos los elementos.
# 4. Mostrar en pantalla todos los elementos junto con un índice.
# 5. Mostrar en pantalla todos los elementos que se encuentren en una posición par.

arreglo = [1,2,3,9,1,4,5,2,3,6,6]

puts arreglo.first

puts arreglo.last

arreglo.each do |i|
  print i
end

print "\n"

0.upto(arreglo.length - 1) { |i| print '[' + i.to_s + ']' + arreglo.fetch(i).to_s + ' ' }

print "\n"

0.upto(arreglo.length - 1) { |i| print(arreglo.fetch(i).to_s + ' ') if i.even? }
