=begin
 Generar el código para imprimir la siguiente tabla:
<table>
 	<tbody>
  		<tr>
	  		<td> 1 </td>
	  		<td> 2 </td>
	  		<td> 3 </td>
  		</tr>
 	</tbody>
</table>

<t> \n\t <tb> \n\t\t <tr> \n\t\t\t <td>

=end
i = ["<table>\n", "</table>"]
j = ["\t<tbody>\n", "\t</tbody>\n"]
k = ["\t\t<tr>\n", "\t\t</tr>\n"]
l = ["\t\t\t<td> ", " </td>\n"]

ans = ''

for x in 0..2 do
	(ans += (i[x] + j[x] + k[x])) if x == 0
	ans += (l[0].to_s + (x+1).to_s + l[1].to_s)
	(ans += (k[x-1] + j[x-1]+ i[x-1])) if x == 2	
end

puts ans
