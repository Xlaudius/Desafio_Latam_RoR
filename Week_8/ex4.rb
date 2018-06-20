=begin
Ejercicio 4: Ejercicio tipo prueba
Se tiene un archivo con diversos productos, donde la primera columna indica el nombre del producto
 y el resto de las columnas muestra el stock en distintas tiendas.
Se pide:
Crear un menú con 5 opciones, se debe validar que la opción escogida sea 1, 2, 3, 4, 5 o 6.
La opción 1 permite conocer la cantidad de productos existentes. Al seleccionar esta opción, 
se mostrará un submenú que permitirá:
a) Mostrar la existencia por productos.
b) Mostrar la existencia total por tienda.
c) Mostrar la existencia total en todas las tiendas.
d) Volver al menú principal.
Hint: Se debe validar que la opción ingresada sea válida.
La opción 2 permite que el usuario ingrese el nombre de un producto y el programa responderá con 
la cantidad de stock total (suma en las bodegas) de ese producto.
La opción 3 muestra los productos no registrados en cada bodega.
La opción 4 permite conocer los productos con una existencia total menor a un valor ingresado por el usuario.
La opción 5 permite registrar un nuevo producto con su respectivo stock en cada bodega. 
(Hint: abrir el archivo como append).
Si el usuario ingresa la opción 6 el programa sale, si ingresa cualquier otra opción se debe mostrar 
que la opción es inválida, y mostrar el menú nuevamente y la opción de elegir.
=end
def display_menu
    puts "Please inputa a choice:\n1.Existing items\n2. Add a product name"
    puts "3.NR products in each warehouse\n4.Products with stock lesser than value"
    puts "5.Register a new product\n6.Exit"
end

def option_1
    puts 'a. Show Existence'
    puts 'b. Show total existence by store'
    puts 'c. Show total existence in all stores'
    puts 'd. Back to menu'
    sub_option = gets.chomp!
end

def option_2(option)
end

def option_3(option)
end

def option_4(option)
end

def option_5(option)
end

display_menu
option = gets.chomp!

while option != 6
    case option
    when option == 1
        option_1
    # when option == 2
    #     # option_2(option)
    # when option == 3
    #     # option_3(option)
    # when option == 4
    #     # option_4(option)
    # when option == 5
    #     # option_5(option)
    else
        puts 'Option not in range!'
    end
end

