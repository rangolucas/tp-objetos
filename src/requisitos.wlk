import musico.*
import Cancion.*
import Excepciones.*

object habilidadMayorA70 {
	method cumple(musico) {
		if(musico.habilidad() > 70) return true
		else throw new RequisitosException("Habilidad menor a 70")
	}
}

object compusoUnaCancion {
	method cumple(musico) {
		if(musico.compusoUnaCancion()) return true
		else throw new RequisitosException("El musico no compuso ninguna cancion")
	}
}

object interpretaBienAlicia {
	method cumple(musico) {
		var alicia = new Cancion("Alicia", “Quién sabe Alicia, este país no estuvo hecho porque sí. Te vas a ir, vas a salir pero te quedas, ¿dónde más vas a ir? Y es que aquí, sabes el trabalenguas, trabalenguas, el asesino te asesina, y es mucho para ti. Se acabó ese juego que te hacía feliz.”, 510)
		
		if(musico.interpretaBien(alicia)) return true
		else throw new RequisitosException("El musico no interpreta bien Alicia")
	}
}