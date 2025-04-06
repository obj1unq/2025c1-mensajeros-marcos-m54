object mensajeria {
	var mensajero = neo
	var destino = matrix
	
	method mensajero() = mensajero
	
	method mensajero(_mensajero) {
		mensajero = _mensajero
	}
	
	method destino() = destino
	
	method destino(_destino) {
		destino = _destino
	}
	
	method puedeSerLlevado() = paquete.pago() && destino.puedePasar(mensajero)
}

object paquete {
	var pago = true
	
	method pago() = pago
	
	method pago(_pago) {
		pago = _pago
	}
}

object chuckNorris {
	const peso = 900
	
	method peso() = peso
	
	method llamar() = true
}

object neo {
	var credito = 50
	const peso = 0
	
	method peso() = peso
	
	method credito() = credito
	
	method credito(_credito) {
		credito = _credito
	}
	
	method llamar() = credito > 0
}

object lincolnHawk {
	var peso = 10
	var transporte = camion
	
	method peso() = peso + transporte.peso()
	
	method peso(_peso) {
		peso = _peso
	}
	
	method transporte() = transporte
	
	method transporte(_transporte) {
		transporte = _transporte
	}
	
	method llamar() = false
}

object bici {
	method peso() = 10
}

object camion {
	var cantAcoplados = 2
	const pesoBase = 500
	const pesoAcoplado = 500
	
	method peso() = pesoBase + (cantAcoplados * pesoAcoplado)
	
	method cantAcoplados() = cantAcoplados
	
	method cantAcoplados(_cantAcoplados) {
		cantAcoplados = _cantAcoplados
	}
}

object brooklyn {
	method puedePasar(mensajero) = mensajero.peso() < 1001
}

object matrix {
	method puedePasar(mensajero) = mensajero.llamar()
}