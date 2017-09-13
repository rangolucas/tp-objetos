import Presentacion.*
import guitarras.*
import lugares.*

object joaquin {
	var grupo = "Pimpinela"
	var habilidad = 20

	method interpretaBien(cancion) {
		return cancion.duraMasDe(300)
	}

	method cantaEnGrupo(presentacion) {
		return presentacion.cantaEnGrupo(self)
	}

	method cobra(presentacion) {
		if(self.cantaEnGrupo(presentacion)){
			return 50
		} else {
			return 100
		}
 	}
	

	method habilidad(presentacion) {
		if (self.cantaEnGrupo(presentacion)) {
			return habilidad + 5
		}
		else return habilidad
	}
}


object lucia {
	var grupo = "Pimpinela"
	var habilidad = 70

	method interpretaBien(cancion) {
		return cancion.tienePalabra("familia")
	}

	method cantaEnGrupo(presentacion) {
		return presentacion.cantaEnGrupo(self)
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


object luisAlberto {

	var guitarra
	var habilidad
	
	method tocarCon(guitar){
		guitarra = guitar
	}
	method interpretaBien(cancion) {
		return true
	}
	method habilidad(presentacion) {
		return 100.min(8 * guitarra.valor())
		
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
//Guitarras
object fender{
	var valor = 10
	
	method valor(){
		return valor
	}
}

object gibsonSana{
	var valor = 15
	
	method valor(){
		return valor		
	}
}

object gibsonRota{
	var valor = 5
	
	method valor(){
		return valor		
	}
}

