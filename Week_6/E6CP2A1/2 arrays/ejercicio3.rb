 # Dado el array:
 # 1. Crear un método para eliminar todos los números pares del arreglo.
 # 2. Crear un método para obtener la suma de todos los elementos del arreglo Utilizando .each
 # 3. Crear un método para obtener el promedio de un arreglo.
 # 4. Crear un método que incrementa todos los elementos en una unidad y devuelva un arreglo nuevo.

a = [1,2,3,9,1,4,5,2,3,6,6]

def del_even_numbers (a)
  0.upto(a.length - 1) { |i| a.delete_at(i) if (a[i]).even? }
  puts a
end

def add_all_elements (a)
  b = 0
  a.each do |i|
    b += i
  end
  puts b
end

def obtain_average (a)
    b = 0
    a.each do |i|
        b += i
    end
    b = (b/a.size)
    puts b
end

def add_1_to_each (a)
  0.upto(a.length - 1) { |i| a[i] = (a[i] + 1) }
  puts a
end

del_even_numbers(a)
# add_all_elements(a)
# obtain_average(a)
# add_1_to_each(a)
