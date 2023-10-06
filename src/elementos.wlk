class Hogar {
	var mugre
	var property confort
	
	method esBueno() = mugre.between(0, confort/2)
}

class Huerta{
	var produccion
	
	method esBueno() = produccion > umbralInferiorDeProduccion.nivel()
}

object umbralInferiorDeProduccion{
	var property nivel = 100
}

class Mascota{
	var salud
	
	method esBueno() = salud > 250
}

