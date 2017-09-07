
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

	method suHabilidadEs() {
		return 100.min(8 * valorGuitarra)
	}
	method cobra(presentacion) {
		if (presentacion.hastaSeptiembre2017()) {
			return 1000
		} else {
			return 1200
		}
	}
}