import Albumes.*
import Presentacion.*
import Cancion.*

class Musico {

	var grupo
	var habilidad
	var albumes = #{}
	var categoria
	var metodoDeCobro
	
	constructor(unGrupo, unaHabilidad, unosAlbumes, unaCategoria, unMetodoDeCobro){
		grupo = unGrupo
		habilidad = unaHabilidad
		albumes = unosAlbumes
		categoria = unaCategoria
		metodoDeCobro = unMetodoDeCobro
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

	method noCompusoUnaCancion(){
		return albumes.size() == 0 || albumes.all{album => album.noTieneCanciones()}
	}

	method habilidad(){
		return habilidad
	}
	
	method habilidad(unaHabilidad){
		habilidad = unaHabilidad
	}
	
	method interpretaBien(cancion) {
		return (habilidad > 60 || albumes.any({album=>album.estaEnAlbum(cancion)})) &&
		categoria.interpretaBien(cancion)	
	}
	
	method cobra(presentacion){
		return metodoDeCobro.cobra(presentacion)
	}
	
	method cualesCantaBien(unaListaDeCanciones){
		 return unaListaDeCanciones.filter({cancion => self.interpretaBien(cancion)})
	}
	
	method categoria(unaCategoria){
		categoria = unaCategoria
	}
	
	method categoria(){
		return categoria
	}
	
	method metodoDeCobro(unMetodoDeCobro){
		metodoDeCobro = unMetodoDeCobro
	}
	
	method metodoDeCobro(){
		return metodoDeCobro
	}
}

