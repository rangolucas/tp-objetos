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
		return duracion < 3*60
	}
	
	method duracion(){
		return duracion
	}
	
	method cantidadDeLetras(){
		return letra.size()
	}
	
	method titulo(){
		return titulo
	}
	
	method letra(){
		return letra
	}
	
	method duraMasQue(unaCancion){
		return duracion > unaCancion.duracion()
	}
	
	method tieneMasLetrasQue(unaCancion){
		return self.cantidadDeLetras() > unaCancion.cantidadDeLetras()
	}
	
	method mismoTituloQue(unaCancion){
		return titulo == unaCancion.titulo()
	}
	
	method tieneDuracionImpar(){
		return duracion.odd()
	}
}

class Remix inherits Cancion {
	constructor(unaCancion) = super(//titulo,letra,duracion
	unaCancion.titulo(),
	"mueve tu cuelpo baby "+unaCancion.letra()+" yeah yeah",
	 unaCancion.duracion()*3 ) {}
	
}

class Mashup inherits Cancion{
	constructor(unasCanciones) = super(null, "una letra", unasCanciones.map({cancion => cancion.duracion()}).max()) {
		titulo = self.tituloMashup(unasCanciones)
	}
	
	method tituloMashup(unasCanciones){
		return unasCanciones.fold(
		"",{nombreMashup,unaCancion=>nombreMashup+" "+unaCancion.letra().trim()}).trim()
	}
}