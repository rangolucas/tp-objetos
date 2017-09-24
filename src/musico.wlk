import Albumes.*

class Musico {

	var grupo
	var habilidad
	var albumes = #{}
	
	var canciones=#{}
	
	constructor(unGrupo, unaHabilidad){
		grupo = unGrupo
		habilidad = unaHabilidad
		
		albumes.forEach({ album => canciones.addAll( album.canciones() ) })
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
