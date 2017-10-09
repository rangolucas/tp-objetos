import Presentacion.*
import lugares.*
import musico.*

object pdpalooza inherits Presentacion(new Date(15,12,2017), lunaPark, null) {
	
	method agregarMusico(musico){
		
		if(!musico.puedeEjecutarAliciaEnElPais()){
			throw new Exception("No puede tocar Alicia")
		}
		
		if(!musico.compusoAlMenosUnaCancion()){
			throw new Exception("No compuso ninguna cancion")
		}
		
		if(musico.habilidadMenorA(70)){
			throw new Exception("Habilidad menor a 70")
		}
		
		self.agregarArtista(musico)
		
	}


}