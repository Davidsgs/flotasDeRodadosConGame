import wollok.game.*
import colores.*

class ChevroletCorsa {
	var property color = rojo
	var property position =  game.at(0,0)
	var property listPos =  [position]
	var property image = color.image()
	
	method capacidad(){
		return 4
	}
	
	method velocidadMaxima(){
		return 150
	}
	
	method peso(){
		return 1300
	}
	
	method guardarPosicion(){
		listPos.add(self.position())
	}
	
	method pasoPor(posicionX,posicionY){
		return listPos.map({pos => [pos.x(), pos.y()]}).contains([posicionX,posicionY])
	}
	
	method pasoPorColumna(numero){
        return listPos.map({pos => pos.y()}).asSet().contains(numero)
   	 }
   	 
	method recorrioFilas(listaDeNumeros){
		return listaDeNumeros.all({numero => self.pasoPorColumna(numero)})
	}
	
	method moverseArriba() {
        self.position(self.position().up(1))
        self.guardarPosicion()
    }
    
    method moverseAbajo() {
        self.position(self.position().down(1))
        self.guardarPosicion()
    }
    
    method moverseDerecha() {
        self.position(self.position().right(1))
        self.guardarPosicion()
    }
    
    method moverseIzquierda() {
    	self.position(self.position().left(1))
        self.guardarPosicion()
    }
	
}

class RenaultKwid{
	var tieneTanqueAdicional = false
	
	method ponerTanque(){
		tieneTanqueAdicional = true
	}
	
	method sacarTanque(){
		tieneTanqueAdicional = false
	}
	
	method capacidad(){
		if(tieneTanqueAdicional){
			return 3
		}else{
			return 4
		}
	}
	
	method velocidadMaxima(){
		if(tieneTanqueAdicional){
			return 120
		}else{
			return 110
		}
	}
	
	method peso(){
		if(tieneTanqueAdicional){
			return 1200 + 150
		}else{
			return 1200
		}
	}
	
	method color(){return "Azul"}
}

class AutoEspecial{
	var capacidad
	var velocidadMaxima
	var peso
	var property color
	
	method setCapacidad(cantidad){ capacidad = cantidad}
	method setVelocidadMaxima(cantidad){ velocidadMaxima = cantidad }
	method setPeso(cantidad){ peso = cantidad }
	method setColor(unColor){ color = unColor}
	
	method capacidad(){return capacidad}
	method velocidadMaxima(){return velocidadMaxima}
	method peso(){return peso}
	
	
}