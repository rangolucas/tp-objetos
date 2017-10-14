import Cancion.*

object porDuracion{
	method comparar(unasCanciones){
		return unasCanciones.max({ cancion => cancion.duracion() })
	}
}

object porLetra{
	method comparar(unasCanciones){
		return unasCanciones.max({ cancion => cancion.cantidadDeLetras() })
	}
}

object porTitulo{
	method comparar(unasCanciones){
		return unasCanciones.min({ cancion => (cancion.titulo()).toLowerCase() })
	}
}
