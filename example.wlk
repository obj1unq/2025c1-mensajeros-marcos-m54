
object albumFiguritas{

	const valorPaquete = 10
	var pago = 0

	method pago() = pago
	method pago(_pago){ pago = _pago}

	method estaPago(){
		return pago >= valorPaquete
	}

}

object george{

	var paquete = albumFiguritas
	var saldo = 10

	method saldo() = saldo
	method saldo(_saldo){saldo = _saldo}

	method paquete() = paquete
	method paquete(_paquete){
		paquete = _paquete
	}

	method pagarPaquete(){
		paquete.pago(self.saldo())
		self.saldo(0)
	}
}

object chuckNorris{

	const peso = 900
	
	method peso(){
		return peso
	}

	method llamar() = true
}


object neo{

	var credito = 50
	const peso = 0


	method peso(){
		return peso
	}

	method credito(){
		return credito
	}

	method credito(_credito){
		credito = _credito
	}

	method llamar(){
		return credito > 0
	}


}

object lincolnHawk{

	var pesoBase = 10
	var hora = 9
	var transporte = camion
	
	method transporte() = transporte
	method transporte(_transporte) { transporte = _transporte}
	
	method hora() = hora
	method hora(_hora){ hora = _hora}

	method pesoBase() = pesoBase
	method pesoBase(_pesoBase){ pesoBase = _pesoBase}

	method peso(){
		return pesoBase * hora
	}

	method pesoLinconl(){
		return pesoBase * hora + transporte.peso()
	}

	method llamar(){
		return false
	}
}

object bici{
	method peso() = 10
}

object camion{

	var acoplado = 500

	method peso() = 10000 + acoplado
	
	method acoplado() = acoplado
	method acoplado(_acoplado) { acoplado = _acoplado}

	method quitarAcoplado(){
		self.acoplado(0)
	}

	method agregarAcoplado(){
		self.acoplado(500)
	}

}

object brooklyn{
	method puedePasar(mensajero){
		return mensajero.peso() < 1001
	}
}

object matrix{
	method puedePasar(mensajero){
		return mensajero.llamar()
	}
}

