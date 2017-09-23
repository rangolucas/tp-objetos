class Cancion {

	var titulo
	var duracion //en segundos
	var letra
	
	constructor(unTitulo, unaLetra, unaDuracion){
		titulo = unTitulo
		letra = unaLetra
		duracion = unaDuracion
	}

	method duraMasDe(unaDuracion){
		return duracion > unaDuracion
	}
	
	method tienePalabra(unaPalabra){
		return letra.toLowerCase().contains(unaPalabra.toLowerCase())
	}
	
	method esCorta(){
		return duracion< 3*60
	}
	
	method duracion(){
		return duracion
	}
	
	method cantidadDeLetras(){
		return letra.size()
	}

}