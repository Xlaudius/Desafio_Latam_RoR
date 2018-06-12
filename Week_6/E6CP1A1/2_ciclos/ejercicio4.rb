# Modifica el código para que el contenido de b sea:
# <ul>
# <li> hola </li>
# <li> hola </li>
# <li> hola </li>
# <li> hola </li>
# <li> hola </li>
# </ul>

a = 5
b = ''
i = 1
a.times do
  b += "<ul> \n"if i == 1
  b += "<li> hola </li> \n"
  b += "</ul> \n"if i == 5
  i += 1
end

puts b