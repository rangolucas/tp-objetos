object lunaPark{
	var cantidadPersonas = 9290
	
	method cantidadPersonasXFecha(fecha){
		return cantidadPersonas
	}
	
	method esConcurrido(fecha){ 
		return self.cantidadPersonasXFecha(fecha) > 5000
	}
	
	method cantidadPersonas(){
		return cantidadPersonas
	}
}

object trastienda{
	var cantidadPersonas = 400
	
	method cantidadPersonasXFecha(fecha){
		const sabado = 6
		if (fecha.dayOfWeek() == sabado){
			return cantidadPersonas +300
		}
		else return cantidadPersonas
	}
	
	method esConcurrido(fecha) {
		return self.cantidadPersonasXFecha(fecha) > 5000
	}
	
	method cantidadPersonas(){
		return cantidadPersonas
	}
}


object laCueva{
	var cantidadPersonas = 150
	
	method cantidadPersonasXFecha(fecha){
		return cantidadPersonas
	}
	
	method esConcurrido(fecha){ 
		return self.cantidadPersonasXFecha(fecha) > 5000
	}
	
	method cantidadPersonas(){
		return cantidadPersonas
	}
}

object prixDAmi{
	var cantidadPersonas = 14000
	
	method cantidadPersonasXFecha(fecha){
		return cantidadPersonas
	}
	
	method esConcurrido(fecha){ 
		return self.cantidadPersonasXFecha(fecha) > 5000
	}
	
	method cantidadPersonas(){
		return cantidadPersonas
	}
}