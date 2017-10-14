import Albumes.*
import Presentacion.*
import Cancion.*

class Musico {

	var grupo
	var habilidad
	var albumes = #{}
	
	constructor(unGrupo, unaHabilidad, unosAlbumes){
		grupo = unGrupo
		habilidad = unaHabilidad
		albumes = unosAlbumes
		
	}
	
	method agregarAlbum(album){
		albumes.add(album)	
	}
	
	method cantaEnGrupo(presentacion) {
		return presentacion.cantaEnGrupo(self)
	}
	
	method esMinimalista(){
		return albumes.all({ album => album.tieneCancionesCortas()})	
	}
	
	method cancionesConPalabra(palabra){
  		return albumes.flatMap({ album => album.cancionesConLaPalabra(palabra) })
 	}
	
	method duracionObra(){
		return albumes.sum({album => album.duracion()})
	}
	
	method laPego(){
		return albumes.all({ album => album.esBuenaVenta() })		
	}
	
	method cumpleCon(requisito){ //requisitos.wlk
		return requisito.cumple(self)
	}

	method compusoUnaCancion(){
		return albumes.size() > 0 && albumes.forEach{album => album.tieneUnaCancion()}
	}

	method habilidad(){
		return habilidad
	}
	
	method interpretaBien(cancion) {
		return habilidad > 60 || albumes.any({album=>album.estaEnAlbum(cancion)})		
	}
}

class MusicoVocalista inherits Musico {

	var palabra

	constructor(unGrupo, unaHabilidad, unosAlbumes , unaPalabra) = super(unGrupo, unaHabilidad, unosAlbumes) {
		palabra = unaPalabra
	}
	
	override method interpretaBien(cancion) {
    	return cancion.tienePalabra(palabra) || super(cancion)
    }

	method cobra(presentacion) {
		if (presentacion.esConcurrida()) {
			return 500
		}
		else return 400
	}
	
	method habilidad(presentacion) {
		if (self.cantaEnGrupo(presentacion)) {
			return habilidad - 20
		}
		else return habilidad
	}
}

class MusicoDeGrupo inherits Musico {
	var plus	
	
	constructor(unGrupo, unaHabilidad, unosAlbumes ,unPlus) = super(unGrupo, unaHabilidad, unosAlbumes){ 
		plus = unPlus
	}

	override method interpretaBien(cancion) {
		return cancion.duraMasDe(300) || super(cancion)
	}

	method habilidad(presentacion) { 
		if (self.cantaEnGrupo(presentacion)) {
			return habilidad += plus
		} else {
			return habilidad
		}
	}
	
	method cobra(presentacion) { 
    	if(self.cantaEnGrupo(presentacion)){ 
      		return 50 
    	} else return 100 
   	} 
	
}
