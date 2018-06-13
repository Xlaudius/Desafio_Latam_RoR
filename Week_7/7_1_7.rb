=begin
    Se tiene un hash con el inventario de un negocio de computadores.

inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}
Se pide:

Crear un menú de 4 opciones, es decir, el usuario puede ingresar 1 2 3 o 4 y según eso el programa realizará distintas funciones.

Si el usuario ingresa 1, podrá agregar un item y su stock en un solo string y agregarlo al hash. 
Para separar el nombre del stock el usuario debe utilizar una coma.

Ejemplo del input: "Pendrives, 100"
Si el usuario ingresa 2, podrá eliminar un item.

Si el usuario ingresa 3, puede actualizar la información almacenada (item y stock).

Si el usuario ingresa 4, podrá ver el stock total (suma del stock de cada item) que hay en el negocio.

Si el usuario ingresa 5, podrá ver el ítem que tiene la mayor cantidad de stock.

Si el usuario ingresa 6 podrá ingresar y preguntarle al sistema si un item existe en el inventario o no. Por ejemplo, el usuario ingresará "Notebooks" y el programa responderá "Sí".

El programa debe repertirse hasta que el usuario ingrese 7 (salir).
=end
stock = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}

puts "Menu \n1 - Add item \n2 - Delete an item \n3 - Update stored info \n4 - View total score \n5 - Greatest stock item \n6 - Query the item for item existence"

option = gets.chomp!
word = option.split

while option != "7" do
    case option
    when "1"
        puts 'Add the item and associated stock separated by a comma!'
        string = gets.chomp!.split(',')
        stock[string[0]] = string[1]
        puts stock
    when "2"
        puts 'Delete an item? here is your inventory: ', stock
        puts 'Which item do you wish to delete?'
        choice = gets.chomp!
        stock.delete("#{choice}")
    when "3"
        puts 'Update your inventory? here is your stock: ', stock
        choice = gets.chomp!
        stock[choice] = 
    when "4"
        puts 'You need help!!!'
    else
        puts "Option not in range!!"
    end
    option = gets.chomp!
end