class Cancion {

	var duracion
	var letra
	
	constructor(unaDuracion, unaLetra){
		duracion = unaDuracion
		letra = unaLetra
	}

	method duraMasDe(unaDuracion){
		return duracion > unaDuracion
	}
	
	method tienePalabra(unaPalabra){
		return letra.contains(unaPalabra)
	}
	

}