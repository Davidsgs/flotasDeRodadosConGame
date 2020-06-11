object trafic{
	var interior
	var motor
	
	method setMotor(unMotor){
		motor = unMotor
	}
	
	method setInterior(unInterior){
		interior = unInterior
	}
	
	method velocidadMaxima(){return motor.velocidadMaxima()}
	
	method capacidad(){return interior.capacidad()}
	
	method peso(){return 4000 + motor.peso() + interior.peso()}
	
	method color(){return "Blanco"}
}

object motorBataton{
	method peso(){return 500}
	method velocidadMaxima(){return 80}
}

object motorPulenta{
	method peso(){return 800}
	method velocidadMaxima(){return 130}
}

object interiorPopular{
	method capacidad(){return 12}
	method peso(){return 1000}
}

object interiorComodo{
	method capacidad(){return 5}
	method peso(){return 700}
}