=begin
Ejercicio 1: Escribiendo un archivo básico

Crear un método que reciba dos strings, este método creará un archivo index.html y pondrá como párrafo
 cada uno de los strings recibidos.

 Crear un método similar al anterior, que además pueda recibir un arreglo. Si el arreglo no está vacío,
 agregar debajo de los párrafos una lista ordenada con cada uno de los elementos.

 Crear un tercer método que además pueda recibir un color. Agregar color de fondo a los párrafos.
El retorno de los métodos debe devolver nil.
=end

def create_html(string1, string2)
    file = File.open("index.html", 'w')
    file.puts "<p> #{string1}</p>"
    file.puts "<p> #{string2}</p>"
end

def passing_array (string1, string2, gen_array)
    file = File.open("index.html", 'w')
    file.puts "<p> #{string1}</p>"
    file.puts "<p> #{string2}</p>"
    unless gen_array.empty?
        file.puts "<ol>"
        gen_array.each { |items| file.puts "<li>#{items}</li>" }
        file.puts "</ol>"
    end
end

def passing_array_and_color (string1, string2, gen_array, color)
    file = File.open("index.html", 'w')
    file.puts "<p style=background-color:#{color}> #{string1}</p>"
    file.puts "<p style=background-color:#{color}> #{string2}</p>"
    unless gen_array.empty?
        file.puts "<ol>"
        gen_array.each { |items| file.puts "<li>#{items}</li>" }
        file.puts "</ol>"
    end
end

create_html('first', 'chao')
test_array = [1, 2, 3, 4, 5]
passing_array("hello", "bah bah", test_array)
passing_array_and_color("hello", "bah bah", test_array, "blue")
