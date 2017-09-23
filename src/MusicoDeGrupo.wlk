import cantantes.*
import Presentacion.*

class MusicoDeGrupo {
	
	var habilidad
	var grupo

	constructor(unaHabilidad, unGrupo) {
		habilidad = unaHabilidad
		grupo = unGrupo
	}

	method cantaEnGrupo(presentacion) {
		return presentacion.cantaEnGrupo(self)
	}
	method habilidad(presentacion, unaCantidad) {
		if (self.cantaEnGrupo(presentacion)) {
			return habilidad += unaCantidad
		} else {
			return habilidad
		}
	}
}