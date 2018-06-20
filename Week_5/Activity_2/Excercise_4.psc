Algoritmo Excercise_4
	Escribir 'Ingrese el primer valor'
	Leer valor1
	Escribir 'Ingrese segundo valor'
	Leer valor2
	Escribir 'Ingrese tercer valor'
	Leer valor3
	
	Si (valor1 Es Mayor Que valor2) y (valor1 Es Mayor Que valor3) Entonces
		Escribir valor1 + ' es el mayor de los nœmeros ingresados'
	SiNo
		Si (valor2 Es Mayor Que valor3) Entonces
			Escribir valor2 + ' es el mayor de los nœmeros'
		SiNo
			Escribir  valor3 + ' es el mayor de los nœmeros'
		Fin Si
	Fin Si
	
FinAlgoritmo
