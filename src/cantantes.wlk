import Presentacion.*
import guitarras.*
import lugares.*
import musico.*
import Albumes.*
import categoriasMusico.*

object luisAlberto inherits Musico( null , null, #{}, null, new PorInflacion(1000,(new Date(1,9,2017)),20)){

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
		
	override method cobra(presentacion){
		return metodoDeCobro.cobra(presentacion)
	}
	
	method tratarMal(guitar){
		guitar.romperse()
	}
	
	method guitarra(){
		return guitarra
	}
}
