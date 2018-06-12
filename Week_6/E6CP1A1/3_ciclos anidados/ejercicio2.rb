=begin
Generar el código para imprimir la siguiente tabla:

 <table>
 <tbody>
  <tr>
    <td> 1 </td>
    <td> 2 </td>
    <td> 3 </td>
    <td> 4 </td>
  </tr>
  <tr>
    <td> 5 </td>
    <td> 6 </td>
    <td> 7 </td>
    <td> 8 </td>
  </tr>
  <tr>
    <td> 9 </td>
    <td> 10 </td>
    <td> 11 </td>
    <td> 12 </td>
  </tr>
  <tbody>
 </table>
=end

i = ["<table>\n", "</table>"]
j = ["\t<tbody>\n", "\t</tbody>\n"]
k = ["\t\t<tr>\n", "\t\t</tr>\n"]
l = ["\t\t\t<td> ", " </td>\n"]

ans = ''

for x in 0..11 do
	(ans += (i[0] + j[0] + k[0])) if x == 0
  
  (ans += (k[1] + k[0])) if (x == 4) or (x == 8)	
  ans += (l[0].to_s + (x+1).to_s + l[1].to_s)
	(ans += (k[1] + j[1] + i[1])) if x == 11
end

puts ans