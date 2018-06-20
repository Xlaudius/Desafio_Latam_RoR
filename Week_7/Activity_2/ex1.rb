=begin
Dado el array:

a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
Utilizando map generar un nuevo arreglo con cada valor aumentado en 1.
Utilizando map generar un nuevo arreglo que contenga todos los valores convertidos a float.
Utilizando map generar un nuevo arreglo que contenga todos los valores convertidos a string.
Utilizando reject descartar todos los elementos menores a 5 en el array.
Utilizando select descartar todos los elementos mayores a 5 en el array.
Utilizando inject obtener la suma de todos los elementos del array.
Utilizando group_by agrupar todos los números por paridad (si son pares, es un grupos, si son impares es otro grupo).
Utilizando group_by agrupar todos los números mayores y menores que 6.
=end

a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

sum_1 = []
a.map { |x| sum_1.append(x + 1) }

arr_string = []
a.map { |x| arr_string.append(x.to_s) }

rej = a.map.reject { |x| x < 6 }

rej2 = a.map.select { |x| x <5 }

sum = a.map.inject(0) { |sum, x| sum + x }

even_odd = a.map.group_by { |x| x % 2 }

gt_lt_6 = a.map.group_by { |x| x > 6 || x < 6 }
print gt_lt_6
