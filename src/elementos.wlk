import plagas.*

class Hogar {
	var mugre
	var property confort
	
	method esBueno() = mugre.between(0, confort/2)
	
	method efectosDelAtaqueDe(unaPlaga){
		mugre += unaPlaga.nivelDeDanio()
	}
}

class Huerta{
	var produccion
	
	method esBueno() = produccion > umbralInferiorDeProduccion.nivel()
	
	method efectosDelAtaqueDe(unaPlaga){
		produccion -= produccion.min(unaPlaga.nivelDeDanio() * 0.1)
		if (unaPlaga.transmiteEnfermedades()) { 
			produccion -= 10.min(produccion)
		}
	}
}

object umbralInferiorDeProduccion{
	var property nivel = 100
}

class Mascota{
	var salud
	
	method esBueno() = salud > 250
	
	method efectosDelAtaqueDe(unaPlaga){
		if (unaPlaga.transmiteEnfermedades()) { 
			salud -= salud.min(unaPlaga.nivelDeDanio())
		}
	}
}

