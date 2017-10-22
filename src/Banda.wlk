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
		
		method habilidadBanda(){
		if(quimica){	
			return self.habilidad() +0.1*self.habilidad()
			}else{
			return self.habilidad()}
		
		
		method tocar(unaCancion){
			return musicos.all({musico => musico.interpretaBien(unaCancion)})
		}
		
		method cobra(unaPresentacion){
			return (musicos.sum({musico => musico.cobra(unaPresentacion)}) + representante.cobro())
		}
		
		method quimica(bool){
			quimica = bool
		}
		
		method habilidad(){	
				return musicos.sum({musico => musico.habilidad()})
			}
			
}