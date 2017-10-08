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
		albumes= unosAlbumes
		
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
	method listoParaElPdpalooza(){
		return (self.granHabilidad() && self.compusoAlMenosUnaCancion() && self.puedeEjecutarAliciaEnElPais())
	}
	method granHabilidad(){
		if(self.habilidad() > 70){
			return true
		}else{
			throw new Exception("La habilidad del musico no es mayor a 70.")
		}
	}
	method habilidad(){
		return habilidad
	}
	method compusoAlMenosUnaCancion(){
		if(albumes == #{}) {
			return true
		}else{
			throw new Exception("No tiene canciones de su autoria.")
		}
	}
		method puedeEjecutarAliciaEnElPais(){
			if(self.interpretaBien(new Cancion("Cancion de Alicia en el pais", "Quién sabe Alicia, este
			 país no estuvo hecho porque sí. Te vas a ir, vas a salir pero te quedas, ¿dónde más vas a ir?
			 Y es que aquí, sabes el trabalenguas, trabalenguas, el asesino te asesina, y es mucho para ti. 
			Se acabó ese juego que te hacía feliz.", 512))){
				return true
			}else{
				throw new Exception("El musico no puede ejecutar bien la cancion Alicia en el pais")
			}
		}
	}
	
	method interpretaBien(cancion) {
		if(habilidad>60){
			return true
		}else{
			return albumes.any({album=>album.estaEnAlbum(cancion)})
		}
	}
	
}

class MusicoVocalista inherits Musico {

	var palabra

	constructor(unGrupo, unaHabilidad, unosAlbumes , unaPalabra) = super(unGrupo, unaHabilidad, unosAlbumes) {
		palabra = unaPalabra
	}
	
	override method interpretaBien(cancion) {
    if(cancion.tienePalabra(palabra)){
        return true
    }else{
        return super(cancion)
    }
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
    if(cancion.duraMasDe(300)){
        return true
    }else{
        return super(cancion)
    }
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
    } else { 
      		return 100 
    } 
   } 
	
}