=begin
Se tienen dos arrays uno con el nombre de personas y otro con las edades,
se pide generar un hash con el nombre y edad de cada persona
 (se asume que no existen dos personas con el mismo nombre)

personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]
Se pide generar un hash con la información:

personas_hash = {"Carolina": 32, "Alejandro":28, "María Jesús":41, "Valentín":19}
Crear un método que reciba el hash y devuelva el promedio de las edades del hash
pasado como argumento.
=end

def avg_of_hash_vales(hash)
    a = 0
    hash.each {|k,v| a += v}
    return a/hash.keys.count
end

persons = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
ages = [32, 28, 41, 19]


jach = Hash[persons.map(&:to_sym).zip(ages).to_h]

avg = avg_of_hash_vales(jach)
puts avg
