import elementos.*

class Barrio {
	const property elementos = []
	
	method esCopado() = 2*elementos.count({elem => elem.esBueno()}) > elementos.size()
}