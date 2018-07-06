module Test
  def result
    if (nota1 + nota2)/2 > 4
      puts "Estudiante aprobado!"
    else
      puts "Estudiante reprobado!"
    end
  end
end

module Attendance
  def student_quantity
    puts "Alumnos: #{quantity}"
  end
end

class Student
  attr_reader :nota1, :nota2, :quantity
  
  extend Attendance
  include Test

  @@quantity = 0

  def initialize(nombre, nota1 = 4, nota2 = 4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @@quantity += 1
  end

  def self.quantity
    @@quantity
  end
end

a1 = Student.new('a',5,4).result
a2 = Student.new('b',4,5).result
a3 = Student.new('c',3,5).result
a4 = Student.new('d',2,5).result
a5 = Student.new('e',1,5).result
a6 = Student.new('f',5,4).result
a7 = Student.new('g',6,5).result
a8 = Student.new('h',7,5).result
a9 = Student.new('i',4,5).result
a10 = Student.new('j',1,4).result

puts Student.quantity
