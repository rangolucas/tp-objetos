import Cancion.*

class Album {
	var titulo
	var lanzamiento
	var unidadesALaVenta
	var unidadesVendidas
	var canciones = #{}
	
	constructor(unTitulo, unLanzamiento, unasUnidadesALaVenta, unasUnidadesVendidas, unasCanciones ){
		titulo = unTitulo
		lanzamiento = unLanzamiento
		unidadesALaVenta = unasUnidadesALaVenta
		unidadesVendidas = unasUnidadesVendidas
		canciones = unasCanciones
	}
	
	method duracion(){
		return canciones.sum({ cancion => cancion.duracion() })
	}
	
	method cancionMasLarga(){
		return cancion.max({ cancion => cancion.cantidadDeLetras() })
	}

	method esBuenaVenta(){
		return unidadesVendidas*100/unidadesALaVenta >= 75
	}	
	
	method canciones(){
		return canciones 
	}
	
	method sonCancionesCortas(){
		return canciones.all({cancion=>cancion.esCorta()})
	}
}