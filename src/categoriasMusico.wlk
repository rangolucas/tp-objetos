import Cancion.*
import Presentacion.*

//CATEGORIAS DE INTERPRETABIEN
class Palabrero {
	var palabra
	
	constructor(unaPalabra){
		palabra = unaPalabra
	}
	
	method interpretaBien(cancion){
		return cancion.tienePalabra(palabra)
	}
}

class Larguero {
	var cantidadDeSegundos
	
	constructor(unaCantidadDeSegundos){
		cantidadDeSegundos = unaCantidadDeSegundos
	}
	
	method interpretaBien(cancion){
		return cancion.duraMasDe(cantidadDeSegundos)
	}	
}

class Imparero {
	
	method interpretaBien(cancion){
		return cancion.tieneDuracionImpar()
	}	
}

//CATEGORIAS DE COBRA

class PorCapacidad {
	var capacidadEstandar
	var ingresoEstandar
	
	constructor(unaCapacidadEstandar, unIngresoEstandar){
		capacidadEstandar = unaCapacidadEstandar
		ingresoEstandar = unIngresoEstandar
	}
	
	method cobra(presentacion){
		if (presentacion.cantidadPersonas() > capacidadEstandar) return ingresoEstandar
		else return ingresoEstandar - 100
	}
}

class PorCuantosSePresentan {
	var ingresoEstandar
	
	constructor(unIngresoEstandar){
		ingresoEstandar = unIngresoEstandar
	}
	
	method cobra(presentacion){
		if(presentacion.artistasMultiples()) return ingresoEstandar/2
		else return ingresoEstandar
	}
}

class PorInflacion {
	var ingresoEstandar
	var fechaLimite
	var porcentajeAdicional
	
	constructor(unIngresoEstandar, unaFechaLimite, unPorcentajeAdicional){
		ingresoEstandar = unIngresoEstandar
		fechaLimite = unaFechaLimite
		porcentajeAdicional = unPorcentajeAdicional
	}
	
	method cobra(presentacion){
		if(presentacion.fecha() < fechaLimite) return ingresoEstandar
		else return ingresoEstandar * (1 + porcentajeAdicional/100)
	}
}