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
		
		method habilidadXPresentacion(unaPresentacion){
			if(quimica) return self.habilidadBanda() + 0.1*self.habilidadBanda()
			else return self.habilidadBanda()
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
		
		method habilidadBanda(){	
				return musicos.sum({musico => musico.habilidad()})
			}
			
}