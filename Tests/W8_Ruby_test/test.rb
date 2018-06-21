def menu
    puts 'Elija una de las siguientes opciones:'
    puts '1. Generar archivo por alumno'
    puts '2. Mostrar inasistencias'
    puts '3. Mostrar nombres de alumnos aprobados'
    puts '4. Salir'
end

def aprueba(aprueba_con=5)
    puts 'Alumnos aprobados'
    content = File.open("notas.csv", 'r')
    content.each_line do |line|
        words = line.split(", ")
        nombre = words.shift
        promedio = words.shift

        if promedio.to_f >= aprueba_con.to_f
            puts nombre
        end
    end
end

menu
option = gets.chomp!

while option != '4'
    case option
    when '1'
        content = File.open("alumnos.csv", 'r')
        content.each_line do |line|
            words = line.split(", ")
            nombre_alumno = words.shift
            file = File.open("notas.csv", 'a+')

            suma = 0
            promedio = 0
            inasistencias = 0
            words.each do |nota|
                nota == 'A' ? (inasistencias += 1) : (suma += nota.to_f)
            end

            promedio = suma/(words.length - inasistencias)
            file.puts "#{nombre_alumno}, #{promedio}"
        end
        menu

    when '2'
        print "\n\nInasistencias totales: ", File.read("alumnos.csv").scan("A").length, "\n"
        menu
        
    when '3'
        puts "\n\nCon que nota se aprueba el ramo?"
        promedio = gets.chomp!
        aprueba(promedio)

        menu
    else
        puts 'Selección no se encuentra en el rango'
        menu
    end

    option = gets.chomp!
end