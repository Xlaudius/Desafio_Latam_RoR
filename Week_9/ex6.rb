class Product
  attr_reader :name, :values
  def initialize(name, *values)
    @name = name
    @values = values
  end

  def average_per_product
    total_values = @values.length
    sum = 0
    for val in @values
      sum += val.to_i
    end
    avg = sum / total_values
    return @name, avg
  end
end

products_list = []
average_price = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
  average_price << Product.new(*ls).average_per_product
end

for items in products_list
  puts "#{items.name} #{items.values}"
end

puts average_price
