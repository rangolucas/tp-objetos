import Presentacion.*

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
	//var habilidad//
	var valorGuitarra

	method tocarConFender() {
		valorGuitarra = 10
	}

	method tocarConGibson(estado) {
		if (estado == "sana") {
			valorGuitarra = 15
		} else {
			valorGuitarra = 5
		}
	}
	
	method tocarConGibson(){
		valorGuitarra = 15
	}
	
	method interpretaBien(cancion) {
		return true
	}
	
	method valorGuitarra() {
		return valorGuitarra
	}

	method habilidad(presentacion) {
		return 100.min(8 * valorGuitarra)
	}
	
	method cobra(presentacion){
		if(presentacion.antesDeSeptiembre()){
			return 1000
		} else {
			return 1200
		}
	}
}
