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
def menu()
    puts "Menu \n1 - Add item \n2 - Delete an item \n3 - Update stored info \n4 - View total store \n5 - Greatest stock item \n6 - Query the item for item existence"
end

menu()
option = gets.chomp!
word = option.split

while option != "7" do
    case option
    when "1"
        puts 'Add the item and associated stock separated by a comma!'
        string = gets.chomp!.split(',').map { |ele| ele.strip }
        stock[string[0].to_sym] = string[1].to_i
        puts stock
        menu
    when "2"
        puts 'Delete an item? here is your inventory: ', stock
        puts 'Which item do you wish to delete?'
        choice = gets.chomp.split.map(&:capitalize).join(' ')
        stock.delete(choice.to_sym) { |key| puts "#{key} was not found!" }
        puts stock
        menu
    when "3"
        puts 'Update your inventory? here is your inventory: ', stock
        puts 'Item?'
        item = gets.chomp.split.map(&:capitalize).join(' ')
        puts 'New stock?'
        new_stock = gets.chomp!.to_i
        stock[item.to_sym] = new_stock
        menu
    when "4"
        total_stock = stock.values.inject(0) { |sum, v| sum + v }
        puts "Here is your total stock: #{total_stock}"
        menu
    when "5"
        max = stock.max_by{|k, v| k}
        puts "The item with the gratest stock is #{max[0]} with #{max[1]} items"
        menu
    when "6"
        item = gets.chomp.split.map(&:capitalize).join(' ')
        stock[item.to_sym] ? (puts 'Item found!') : (puts 'Item not found!')
        menu
    else
        puts "Option not in range!! (options are 1 through 7!)"
        menu
    end
    menu
    option = gets.chomp!
end