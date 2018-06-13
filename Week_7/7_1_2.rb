products = {'drinks' => 850, 'chocolate' => 1200, 'cookies' => 900, 'milk' => 750}

products.each { |value, product| puts product }

products['drinks'] = 2000

puts products['drinks']

var = products.to_a

products.delete('cookies')

puts products