import cantantes.*
import Presentacion.*

class MusicoVocalista {
	var habilidad
	var grupo
	var palabra

	constructor(unaHabilidad, unGrupo, unaPalabra) {
		habilidad = unaHabilidad
		grupo = unGrupo 
		palabra = unaPalabra
	}
	method cantaEnGrupo(presentacion) {
		return presentacion.cantaEnGrupo(self)
	}
	method interpretaBien(cancion, unaPalabra) {
		return cancion.tienePalabra(unaPalabra) && unaPalabra == palabra
	}
}