# Crear un método que muestre en pantalla un saludo, el método
# debe recibir un parámetro, si ese parámetro es el string "Hola" el
# método debe mostrar en pantalla "Hola Mundo".

def greeting(hello)
  hello.downcase!
  puts 'Hello World!' if hello == 'hello'
end

greeting('Hello')
greeting('hello')
greeting('hola')
