class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
    puts "El motor se ha encendido!"
  end
end

class Car < Vehicle
  @@instance_counter = 0
  
  def initialize(model, year)
    @@instance_counter += 1    
    super
  end

  def how_many_cars
    super
  end

  def self.how_many_cars
    puts @@instance_counter
  end
end

cars = []
10.times do |a|
  cars << Car.new("modelo #{a}",a)
end

Car.how_many_cars
puts cars[0].engine_start