import musico.*
import Cancion.*
import Excepciones.*

object habilidadMayorA70 {
	method aplicarA(musico) {
		if(musico.habilidad() < 70) throw new RequisitosException("Habilidad menor a 70")
	}
}

object compusoUnaCancion {
	method aplicarA(musico) {
		if(musico.noCompusoUnaCancion()) throw new RequisitosException("El musico no compuso ninguna cancion")
	}
}

object interpretaBienAlicia {
	method aplicarA(musico) {
		var alicia = new Cancion("Alicia", "Quien sabe Alici aeste pa�s no estuvo hecho porque si. Te vas a ir, vas a salir pero te quedas, �d�nde m�s vas a ir? Y es que aqu�, sabes el trabalenguas, trabalenguas, el asesino te asesina, y es mucho para ti. Se acab� ese juego que te hac�a feliz.�", 510)
		
		if(!musico.interpretaBien(alicia)) throw new RequisitosException("El musico no interpreta bien Alicia")
	}
}