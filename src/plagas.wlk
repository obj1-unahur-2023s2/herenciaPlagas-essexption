class Plaga {
	var poblacion
	
	method transmiteEnfermedades() = poblacion >= 10 and self.condicionAdicional()
	method condicionAdicional() = true
	method nivelDeDanio() = self.tasaDePoblacion() * poblacion
	method tasaDePoblacion()
}

class Cuca inherits Plaga {
	const pesoPromedio
	override method condicionAdicional() = pesoPromedio >= 10
	//override method transmiteEnfermedades() = super() and pesoPromedio >= 10
	override method tasaDePoblacion() = 0.5
}

class Pulga inherits Plaga {
	override method tasaDePoblacion() = 2

}

class Garrapata inherits Plaga {
	override method tasaDePoblacion() = 2
}

class Mosquito inherits Plaga {
	override method tasaDePoblacion() = 1
	
	//override method transmiteEnfermedades() = poblacion % 3 == 0
	override method condicionAdicional() = poblacion % 3 == 0
}