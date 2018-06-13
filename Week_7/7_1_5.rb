=begin
Dados los siguientes array:

meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]
Generar un hash que contenga los meses como llave y las ventas como valor:

h = {'Enero': 2000, 'Febrero': 3000 ... }
En base al hash generado:

Invertir las llaves y los valores del hash.
Obtener el mes mayor cantidad de ventas (a partir del hash invertido.)
=end

months = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
sales = [2000, 3000, 1000, 5000, 4000]

mon_sales = months.map(&:to_sym).zip(sales).to_h
puts mon_sales

mon_sales_i = mon_sales.invert
mon_sales = mon_sales_i
puts mon_sales

a = mon_sales.max_by{|k,v| k}

puts a[1]
