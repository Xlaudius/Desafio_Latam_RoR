=begin
Ejercicio 2: Contando líneas

Se tiene un peliculas.txt con diversas películas:

La Guerra de las Galaxias. Episodio I: La amenaza fantasma
La Guerra de las Galaxias. Episodio II: El ataque de los clones
La Guerra de las Galaxias. Episodio III: La venganza de los Sith
La Guerra de las Galaxias. Episodio IV: Una nueva esperanza
La Guerra de las Galaxias. Episodio V: El imperio contraataca
La Guerra de las Galaxias. Episodio VI: El retorno del Jedi
Crear un método que lea el archivo, lo abra y devuelva la cantidad de líneas que posee.
=end
def lines_in_file(file_name)
    cont = 0
    content=File.open("#{file_name}", 'r')
    content.each_line do |line|
        cont += 1
    end
    return cont
end
how_many_lines = lines_in_file("peliculas.txt")
puts how_many_lines
