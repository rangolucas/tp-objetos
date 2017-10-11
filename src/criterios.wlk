import Cancion.*

class Criterio{
	method comparar(unasCanciones)
}

object porDuracion inherits Criterio{
	override method comparar(unasCanciones){
		return unasCanciones.max({ cancion => cancion.duracion() })
	}
}

object porLetra inherits Criterio{
	override method comparar(unasCanciones){
		return unasCanciones.max({ cancion => cancion.cantidadDeLetras() })
	}
}

object porTitulo inherits Criterio{
	override method comparar(unasCanciones){
		return unasCanciones.min({ cancion => (cancion.titulo()).toLowerCase() })
	}
}