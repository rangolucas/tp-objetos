import cantantes.*
import Presentacion.*
import musico.*

class MusicoDeGrupo inherits Musico {

	constructor(unGrupo, unaHabilidad) = super(unGrupo, unaHabilidad)

	method habilidad(presentacion, unaCantidad) { //ESTO PERDIO EL POLIMORFISMO
		if (self.cantaEnGrupo(presentacion)) {
			return habilidad += unaCantidad
		} else {
			return habilidad
		}
	}
}