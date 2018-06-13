=begin
Escribir un hash con el menu de un restaurant, la llave es el nombre del plato
y el valor es el precio de este.

restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
Obtener el plato mas caro.
Obtener el plato mas barato.
Sacar el promedio del valor de los platos.
Crear un arreglo con solo los nombres de los platos.
Crear un arreglo con solo los valores de los platos.
Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).
Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra.
=end

restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

max = restaurant_menu.max_by{|k, v| v}
puts max[0]

min = restaurant_menu.min_by{|k,v| v}
puts min[0]

a = 0
restaurant_menu.each {|k,v| a += v}
puts a/restaurant_menu.keys.count

dishes = restaurant_menu.keys.to_a
puts dishes

values = restaurant_menu.values.to_a
puts values

restaurant_menu.each do |k, v|
    restaurant_menu[k] = (v * 1.19)
end
puts restaurant_menu

restaurant_menu.each do |k, v|
    restaurant_menu[k] = (v * 0.8) if k.split.size > 1
end
puts restaurant_menu
