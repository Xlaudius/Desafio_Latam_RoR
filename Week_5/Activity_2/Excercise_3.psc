Algoritmo Excercise_3
	Escribir 'Ingrese un valor para evaluar'
	Leer valor
	Si valor == 2 o valor == 3 Entonces
		Escribir 'Valor es primo'
	SiNo
		Si (valor mod 2 != 0) y (valor mod 3 != 0)  Entonces
			Escribir 'Valor es primo'
		SiNo
			Escribir 'No es primo'
		Fin Si
	Fin Si
FinAlgoritmo
