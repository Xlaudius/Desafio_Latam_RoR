=begin
Ejercicio 3: Array de hashes
1. Crear un menu ́que permita registrar la información de los alumnos del curso. 
2. Opción1:Permiteingresarlosdatosdeunapersona:
Nombre Edad Comuna Género
3. Opción2:Permiteeditarlosdatosdelapersona. 4. Opción3:Permiteeliminarunapersona.
        
5. Opción4:Muestralacantidaddepersonasingresadas.
6. Opción5:Muestralascomunasdetodaslaspersonas.
hint: Generar un array con las comunas, eliminar repeticiones. Considerar que pueden haber nombres escritos con mayúscula y minúscula.
7. Opción6:Muestraunalistacontodaslaspersonasquetenganentre20y25años.
8. Opción7:Muestralasumadelasedadesdetodaslaspersonas.
9. Opción8:Muestraelpromediodelasedadesdelgrupo.
10. Opción9:Muestradoslistasdepersonas,unaporcadagénero.
11. Elmenúdeberepetirsehastaqueelusuarioingreselaopción10(salir).
=end

lista = Hash.new

def menu()
    puts '1. Registrar a un alumno'
    puts '2. Editar datos de un alumno'
    puts '3. Eliminar a un alumno'
    puts '4. cantidad de personas ingresadas'
    puts '5. Mostrar comunas de las personas'
    puts '6. Personas entre 20 y 25 años'
    puts '7. Suma de las edades de todas las personas'
    puts '8. Muestra el promedio de las edades del grupo'
    puts '9. Mostrar a las personas separadas por genere'
    puts '10. SALIR'
end

menu()

opcion = gets.chomp!
while opcion != '10' do
    case opcion
    when '1'
        puts 'Nombre'
        nombre = gets.chomp!
        puts 'Edad'
        edad = gets.chomp!
        puts 'Comuna'
        comuna = gets.chomp!
        puts 'Genero'
        genero = gets.chomp!

        lista.store(nombre, edad)
        lista[nombre]
        print lista

    when '2'
    when '3'
    when '4'
    when '5'
    when '6'
    when '7'
    when '8'
    when '9'
    when '10'
    else
        'Opcion no valida'
        menu()
        opcion = gets.chomp!
    end    
end