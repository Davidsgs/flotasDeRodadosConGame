import otrosRodados.*
import trafic.*

class Pedido{
	var property distancia
	var property tiempoMaximo
	var property cantidadATransportar
	const property colores = #{}
	
	method addColores(listaColores){
		colores.addAll(listaColores)
	}
	
	method velocidadRequerida(){
		return distancia / tiempoMaximo
	}
	
	method puedeHacerPedido(unAuto){
		return ((self.velocidadRequerida() + 10) <= unAuto.velocidadMaxima() and
				unAuto.capacidad() >= cantidadATransportar and
				not(colores.any({color => color == unAuto.color()})))
	}
	
	method relajar(){
		tiempoMaximo += 1
	}
	
	method acelerar(){
		tiempoMaximo -= 1
	}
}
