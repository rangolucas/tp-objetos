import Presentacion.*
import guitarras.*
import lugares.*
import MusicoDeGrupo.*
import MusicoVocalista.*

object joaquin inherits MusicoDeGrupo(20, "Pimpinela"){

	method interpretaBien(cancion) {
		return cancion.duraMasDe(300)
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


object lucia inherits MusicoVocalista(70, "Pimpinela") {

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

object kike inherits MusicoDeGrupo(60, "") {
	 
	 method cobra(presentacion){
	 	
	 } 
}

object soledad inherits MusicoVocalista(55, "", "amor"){
	
}
