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
		return canciones.max({ cancion => cancion.cantidadDeLetras() })
	}
	
	method cancionConMasDuracion(unaCancion, otraCancion){
		if(unaCancion.duracion() > otraCancion.duracion()){
			return unaCancion
		}else{
			return otraCancion
		}
	}

	method esBuenaVenta(){
		return unidadesVendidas*100/unidadesALaVenta >= 75
	}	
	
	method canciones(){
		return canciones 
	}
	
	method tieneCancionesCortas(){
		return canciones.all({cancion => cancion.esCorta()})
	}
	method cancionesConLaPalabra(palabra){
  		return canciones.filter{cancion => cancion.tienePalabra(palabra)}
 	}
 	method tieneUnaCancion(){
 		return canciones.size() > 0
 }
}


