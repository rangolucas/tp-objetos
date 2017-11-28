class Lugar {
	
	var cantidadPersonas
	
	constructor (unaCantidadPersonas){
		cantidadPersonas = unaCantidadPersonas
	}
	
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

object lunaPark inherits Lugar (9290){}

object trastienda inherits Lugar (400){
	
	override method cantidadPersonasXFecha(fecha){
		const sabado = 6
		if (fecha.dayOfWeek() == sabado){
			return cantidadPersonas +300
		}
		else return cantidadPersonas
	}
}