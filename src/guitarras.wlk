import cantantes.*

object fender{
	 	var valor = 10
	 	var estado = "sana" 
	 	
	 	method romperse(){
		estado = "rota"
	}
	method valor(){
		return valor
	}
	method arreglarse(){
		estado = "sana"
	}

}

object gibson{
	var valor = 15
	var estado = "sana"
	
	method romperse(){
		estado = "rota"
		valor = 5
	}
	method arreglarse(){
		estado = "sana"
		valor = 15
	}
	
	method valor(){
		return valor
	}
}