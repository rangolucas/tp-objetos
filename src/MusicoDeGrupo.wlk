import cantantes.*
import Presentacion.*
import musico.*

class MusicoDeGrupo inherits Musico {
	var plus	
	
	constructor(unGrupo, unaHabilidad,unPlus) = super(unGrupo, unaHabilidad){ 
		plus = unPlus
	}

	method habilidad(presentacion) { 
		if (self.cantaEnGrupo(presentacion)) {
			return habilidad += plus
		} else {
			return habilidad
		}
	}
}