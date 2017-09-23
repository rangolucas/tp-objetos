import cantantes.*
import Presentacion.*
import musico.*

class MusicoVocalista inherits Musico {

	var palabra

	constructor(unGrupo, unaHabilidad, unaPalabra) = super(unGrupo, unaHabilidad) {
		palabra = unaPalabra
	}

	method interpretaBien(cancion) {
		return cancion.tienePalabra(palabra)
	}
}