import Presentacion.*
import lugares.*

object pdpalooza inherits Presentacion(new Date(15,12,2017), lunaPark, null) {
	
	method agregarMusico(musico){
		if(musico.listoParaElPdpalooza()){
			artistas.add(musico)
		}else {
			throw new Exception("No esta preparado para el Pdpalooza")
		}
	}


}