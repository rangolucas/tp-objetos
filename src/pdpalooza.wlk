import Presentacion.*
import lugares.*
import musico.*
import cantantes.*

object pdpalooza inherits Presentacion(new Date(15,12,2017), lunaPark, null) {
	
        override method agregarArtista(musico){
		if(musico.listoParaElPdpalooza()){
			artistas.add(musico)
		}else {
			throw new Exception("No esta preparado para el Pdpalooza")
		}
	}


}
