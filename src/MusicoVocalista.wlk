import cantantes.*
import Presentacion.*
import musico.*

class MusicoVocalista inherits Musico {

	var palabra

	constructor(unaHabilidad, unGrupo, unaPalabra) = super(unaHabilidad, unGrupo) {
		palabra = unaPalabra
	}

	method interpretaBien(cancion) {
		return cancion.tienePalabra(palabra)
	}
}