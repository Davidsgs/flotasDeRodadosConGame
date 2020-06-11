import trafic.*
import otrosRodados.*
import pedidos.*

class Dependencia{
	const property registroPedidos = #{}
	const flotaRodados = []
	var empleados = 0
	
	method relajarPedidos(){
		registroPedidos.forEach({pedido => pedido.relajar()})
	}
	
	method colorEsIncompatible(unColor){
		return registroPedidos.all({pedido => registroPedidos.colores().contains(unColor)})
	}
	
	method pedidosQueNoPuedenSatisfarcerse(){
		return registroPedidos.filter({pedido => pedido.puedeHacerPedido(flotaRodados)})
	}
	
	method totalPasajerosEnPedidos(){
		return registroPedidos.sum({pedido => pedido.cantidadATransportar()})
	}
	
	method sacarPedido(pedido){
		registroPedidos.remove(pedido)
	}
	
	method aregarPedido(pedido){
		registroPedidos.add(pedido)
	}
	
	method empleados(){return empleados}
	
	method setEmpleados(cantidad){empleados = cantidad}
	
	method agregarAFlota(rodado){
		flotaRodados.add(rodado)
	}
	
	method pesoTotalFlota(){
		return flotaRodados.sum({rodado => rodado.peso()})
	}
	
	method estaBienEquipada(){
		return flotaRodados.size() > 3 and flotaRodados.all({rodado => rodado.velocidadMaxima() >= 100})
	}
	
	method capacidadTotalEnColor(color){
		return flotaRodados.filter({rodado => rodado.color() == color}).sum({rodado => rodado.capacidad()})
	}
	
	method colorDelRodadoMasRapido(){
		return flotaRodados.max({rodado => rodado.velocidadMaxima()}).color()
	}
	
	method capacidadFaltante(){
		return empleados - flotaRodados.sum({rodado => rodado.capacidad()})
	}
	
	method esGrande(){return empleados >= 40 and flotaRodados.size() >= 5}
	
}