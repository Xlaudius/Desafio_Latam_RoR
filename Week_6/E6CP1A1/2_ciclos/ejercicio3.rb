# Mostrar todos los divisores del número 990 con:
# while, for, times.
x = 990
i = 1
for i in 1..990 do
     puts i if x % i == 0 
end

while i <= x do
    puts i if x % i == 0 
    i += 1
end

991.times do
    puts i if x % i == 0 
end