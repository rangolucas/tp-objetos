object joaquin {
	var grupo = "Pimpinela"
	var habilidad = 20

	method interpretaBien(cancion) {
		return cancion.duracionMayorA(300)
	}

	method cantaEnGrupo(presentacion) {
		return presentacion.cantaEnGrupo(self)
	}

	method cobra(presentacion) {
	if(self.cantaEnGrupo(presentacion)){
		return 50
	}
	else{
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
		return cancion.contains("familia")
	}

	method cantaEnGrupo(presentacion) {
		return presentacion.cantaEnGrupo(self)
	}

	method cobra(lugar) {
		if (lugar.esConcurrido()) {
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
