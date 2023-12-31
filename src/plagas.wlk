import elementos.*

class Plaga {
	var poblacion
	
	method transmiteEnfermedades() = poblacion >= 10 and self.condicionAdicional()
	method condicionAdicional() = true
	method nivelDeDanio() = self.tasaDePoblacion() * poblacion
	method tasaDePoblacion()
	
	method efectosDeAtacar() {
		poblacion *= 1.1
	}
	method atacar(unElemento){
		self.efectosDeAtacar()
		unElemento.efectosDelAtaqueDe(self)
	}
}

class Cuca inherits Plaga {
	var pesoPromedio
	
	override method condicionAdicional() = pesoPromedio >= 10
	//override method transmiteEnfermedades() = super() and pesoPromedio >= 10
	override method tasaDePoblacion() = 0.5
	
	override method efectosDeAtacar(){
		super()
		pesoPromedio += 2
	}
}

class Pulga inherits Plaga {
	override method tasaDePoblacion() = 2

}

class Garrapata inherits Plaga {
	override method tasaDePoblacion() = 2
	
	override method efectosDeAtacar(){
		poblacion *= 1.2
	}
}

class Mosquito inherits Plaga {
	override method tasaDePoblacion() = 1
	
	//override method transmiteEnfermedades() = poblacion % 3 == 0
	override method condicionAdicional() = poblacion % 3 == 0
}