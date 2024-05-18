class UserException inherits wollok.lang.Exception {}

object monedero {
	var plata = 500

	method plata() = plata

	method poner(cantidad) {
		self.validarMonto(cantidad)
		plata = plata + cantidad
	}

	method sacar(cantidad) {
		self.validarMonto(cantidad)
		if (cantidad > plata) {
			throw new UserException(message = "Debe retirar menos de " + plata)
		} 
		plata = plata - cantidad
	}

	method validarMonto(cantidad) {
		if (cantidad < 0) {
			throw new UserException(message = "La cantidad a retirar debe ser positiva")
		}
	}
}
