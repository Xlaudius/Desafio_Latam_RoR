# Escriba un método llamado check5 que devuelva true cuando
# se le pase un número mayor a 5 y false en caso contrario.

def check5(num)
  num > 5 ? (return true) : (return false)
end

puts check5(5) # Debería ser false
puts check5(6) # Debería ser true
