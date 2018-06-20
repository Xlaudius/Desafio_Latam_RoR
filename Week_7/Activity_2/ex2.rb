=begin
Dado el arreglo

nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
Se pide:

Extraer todos los elementos que excedan mas de 5 caracteres utilizando el método .select.
Utilizando .map crear una arreglo con los nombres en minúscula.
Utilizando .select para crear un arreglo con todos los nombres que empiecen con P.
Utilizando .map crear un arreglo único con la cantidad de letras que tiene cada nombre.
Utilizando .map y .gsub eliminar las vocales de todos los nombres.
=end

nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

gt_5_c = nombres.map.select { |x| x.length > 5  }

minus = nombres.map { |x| x.downcase }

starts_with_p = nombres.map.select {|x| x[0] == 'P' }

letters = []
letters = nombres.map { |x| x.length }

vowels = nombres.map { |x| x.gsub(/[aeiou]/, '') }
