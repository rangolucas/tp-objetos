import cantantes.*
import lugares.*

class Presentacion {

	var fecha //clase Date
	var lugar
	var artistas = #{}
	
	constructor(unaFecha, unLugar, listaArtistas){
		fecha = unaFecha
		lugar = unLugar
		artistas = listaArtistas
	}
	
	method costo() {
		return artistas.map{artista => artista.cobra()}.sum()
	}
	
	method cantidadPersonas(){
		return lugar.cantidadPersonas(fecha)
	}
	
	method agregarArtistas(artista){
		artistas.add(artista)
	}
	
	method quitarArtista(artista){
		artistas.remove(artista)
	}

	method lugar(){
		return lugar
	}
	
	method fecha(){
		return fecha
	}
	
	method esConcurrida(){
		return lugar.muchaCapacidad(fecha)
	}
	
	method antesDeSeptiembre(){
		return fecha.month() < 9
	}
}