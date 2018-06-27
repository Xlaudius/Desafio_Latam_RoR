class Product
  attr_reader :name, :values
  def initialize(name, *values)
    @name = name
    @values = values
  end

  def no_xs(name, *values)
    file = File.open('nuevo_catalogo.txt', 'a')
    file.puts("#{@name} #{@values.first @values.size - 1}")
    
    file.close
    # file << 
    # file.close
  end
end

products_list = []
new_catalog = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
  new_catalog << Product.new(*ls).no_xs(*ls)
end

puts new_catalog
