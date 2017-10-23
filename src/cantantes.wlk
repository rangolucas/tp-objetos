import Presentacion.*
import guitarras.*
import lugares.*
import musico.*
import Albumes.*

object luisAlberto inherits Musico( null , null, #{}, null, null){

	var guitarra

	method tocarCon(guitar){
		guitarra = guitar
		habilidad = 100.max(guitar.valor())
	}
	
	override method interpretaBien(cancion) {
		return true
	}
	method habilidadXPresentacion(presentacion) {
		self.efectoGuitarra()
		return habilidad
		}
		
	method efectoGuitarra(){
		habilidad = 100.min(8 * guitarra.valor())
		}
		
	method cobra(presentacion){
		if(presentacion.antesDe(1, 9, 2017)){
			return 1000
		} else {
			return 1200
		}
	}
	
	method tratarMal(guitar){
		guitar.romperse()
	}
	
	method guitarra(){
		return guitarra
	}
}
