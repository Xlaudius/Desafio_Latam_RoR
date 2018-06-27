class Dog
  def initialize(propiedades)
    @propiedades = propiedades
  end

  def ladrar
    puts "#{@propiedades[:nombre]}, esta ladrando!"
  end
end

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

dog1 = Dog.new(propiedades)
dog1.ladrar
