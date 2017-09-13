import cantantes.*

object fender{
	var valor = 10
	 	
	method valor(){
		return valor
	}

}

object gibson{
	var estado = gibsonSana
	
	method romperse(){
		estado = gibsonRota
	}
	
	method arreglarse(){
		estado = gibsonSana
	}
	
	method valor(){
		return estado.valor()
	}
}

object gibsonSana{
	var valor = 15
	
	method valor(){
		return valor
	}
}

object gibsonRota{
	var valor = 5
	
	method valor(){
		return valor
	}
}