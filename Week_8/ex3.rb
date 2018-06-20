=begin
Ejercicio 3: Contando palabras

Crear un método que reciba el archivo peliculas.txt, lo abra y cuente la cantidad total de palabras. 
El método debe devolver este valor.

Crear un método similar para que además reciba -como argumento- un string. 
En este caso el método debe contar únicamente las apariciones de ese string en el archivo.
=end



def word_count_in(file_name)
    total_words = 0
    content = File.open("#{file_name}", 'r')
    content.each_line do |line|
        words = line.split 
        words.each do |word|
            total_words += 1
        end
    end
    return total_words
end

def word_occurrences_in(file_name, search)
    File.read("#{file_name}").scan("#{search}").length
end


total = word_count_in("peliculas.txt")
puts total

times = word_occurrences_in("peliculas.txt", "Jedi")
puts times
