import Representante.*
import musico.*
import Cancion.*

class Banda {
		
		var representante
		var musicos = #{}
		var habilidad
		var quimica
		
		constructor(unRepresentante, unosMusicos, unaHabilidad, unaQuimica){
			representante = unRepresentante
			musicos = unosMusicos
			habilidad = unaHabilidad
			quimica = unaQuimica
		}
		
		method agregarMusico(unMusico){
			musicos.add(unMusico)
		}
		
		method habilidadBanda(){
			habilidad = musicos.sum({musico => musico.habilidad()}) + 0.1*quimica
		}
		
		method tocar(unaCancion){
			return musicos.all({musico => musico.interpretaBien(unaCancion)})
		}
		
		method cobra(unaPresentacion){
			return (musicos.sum({musico => musico.cobra(unaPresentacion)}) + representante.cobro())
		}
		
		method quimica(){
			return quimica
		}
		
		method habilidad(){
			return habilidad
		}
			
}