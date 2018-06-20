Algoritmo Excercise_5
	Dimension cpu[3]
	cpu[0] = 'piedra'
	cpu[1] = 'papel'
	cpu[2] = 'tijera'
	rand = cpu[azar(3)]
	
	Escribir 'Elija entre: piedra, papel o tijera'
	Leer humano
	
	Si rand == 'piedra' Entonces
		Si humano == 'papel' Entonces
			Escribir 'Ganaste! ' + rand + ' contra ' + humano
		SiNo
			si humano == 'tijera' Entonces
				Escribir 'Perdiste! ' + rand + ' contra ' + humano
			SiNo
				Escribir 'Empate! ' + rand + ' contra ' + humano
			FinSi
		FinSi
	FinSi
	
	Si rand == 'papel' Entonces
		si humano == 'papel' Entonces
			Escribir 'Empate! ' + rand + ' contra ' + humano
		SiNo
			si humano == 'tijera' Entonces
				Escribir 'Ganaste! ' + rand + ' contra ' + humano
			SiNo
				Escribir 'Perdiste! ' + rand + ' contra ' + humano
			FinSi
		FinSi
	FinSi
	
	Si rand == 'tijera' Entonces
		si humano == 'papel' Entonces
			Escribir 'Perdiste! ' + rand + ' contra ' + humano
		SiNo
			si humano == 'tijera' Entonces
				Escribir 'Empate! ' + rand + ' contra ' + humano
			SiNo
				Escribir 'Ganaste! ' + rand + ' contra ' + humano
			FinSi
		FinSi
	FinSi
FinAlgoritmo
