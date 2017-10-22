import Representante.*
import musico.*
import Cancion.*

class Banda {
		
		var representante
		var musicos = #{}
		var quimica = true
		
		
		constructor(unRepresentante, unosMusicos, unaQuimica){
			representante = unRepresentante
			musicos = unosMusicos
			quimica = unaQuimica
		}
		
		method agregarMusico(unMusico){
			musicos.add(unMusico)
		}
		
		method habilidad(){
			if(quimica) return self.sumaHabilidades() + 0.1*self.sumaHabilidades()
			else return self.sumaHabilidades()
		}
		
		method tocar(unaCancion){
			return musicos.all({musico => musico.interpretaBien(unaCancion)})
		}
		
		method cobra(unaPresentacion){
			return (musicos.sum({musico => musico.cobra(unaPresentacion)}) + representante.cobro())
		}
		
		method quimica(bool){
			quimica = bool
		}
		
		method sumaHabilidades(){	
			return musicos.sum({musico => musico.habilidad()})
		}
			
}