import Representante.*
import musico.*
import Cancion.*

class Banda {
		
		var nombre
		var representante
		var musicos = #{}
		var quimica = true
		
		
		constructor(unNombre, unosMusicos, unRepresentante){
			nombre = unNombre
			musicos = unosMusicos
			representante = unRepresentante
		}
		
		method agregarMusico(unMusico){
			musicos.add(unMusico)
		}
		
		method habilidad(){
			if(quimica) return (self.sumaHabilidades() + (0.1)*(self.sumaHabilidades()) )
			else return self.sumaHabilidades()
		}
		
		method habilidadXPresentacion(presentacion){
			if(quimica) return self.sumaHabilidadesXPresentacion(presentacion)*(1.1)
			else return self.sumaHabilidadesXPresentacion(presentacion)
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
		
		method sumaHabilidadesXPresentacion(presentacion){	
			return musicos.sum({musico => musico.habilidadXPresentacion(presentacion)})
		}
			
}
