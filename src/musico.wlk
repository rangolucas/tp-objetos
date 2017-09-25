import Albumes.*
import Presentacion.*

class Musico {

	var grupo
	var habilidad
	var albumes = #{}
	
	var canciones=#{}
	
	constructor(unGrupo, unaHabilidad, unosAlbumes){
		grupo = unGrupo
		habilidad = unaHabilidad
		albumes= unosAlbumes
		
		albumes.forEach({ album => canciones.addAll( album.canciones() ) })
	}
	
	method agregarAlbum(album){
	albumes.add(album)	
	}
	
	method cantaEnGrupo(presentacion) {
		return presentacion.cantaEnGrupo(self)
	}
	
	method esMinimalista(){
		albumes.all({ album => album.sonCancionesCortas() })	
	}
	
	method cancionesConPalabra(palabra){
		canciones.filter({ cancion => cancion.tienePalabra(palabra) })
	}
	
	method duracionObra(){
		return albumes.sum({album => album.duracion()})
	}
	
	method laPego(){
		return albumes.all({ album => album.esBuenaVenta() })		
	}
}

class MusicoVocalista inherits Musico {

	var palabra

	constructor(unGrupo, unaHabilidad, unaPalabra) = super(unGrupo, unaHabilidad) {
		palabra = unaPalabra
	}

	method interpretaBien(cancion) {
		return cancion.tienePalabra(palabra)
	}
}

class MusicoDeGrupo inherits Musico {
	var plus	
	
	constructor(unGrupo, unaHabilidad,unPlus) = super(unGrupo, unaHabilidad){ 
		plus = unPlus
	}

	method habilidad(presentacion) { 
		if (self.cantaEnGrupo(presentacion)) {
			return habilidad += plus
		} else {
			return habilidad
		}
	}
}