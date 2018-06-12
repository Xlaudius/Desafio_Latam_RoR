# Generar -utilizando un ciclo iterativo- un string con la siguiente estructura:
# a = '1impar 2par 3impar 4par 5impar 6par 7impar 8par 9impar 10par'

a = ''
10.times do |i|
	(i+1).even? ? (a += (i+1).to_s+'par ') : (a += (i+1).to_s+'impar ')
end

puts a
