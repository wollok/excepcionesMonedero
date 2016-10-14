class UserException inherits wollok.lang.Exception {
	constructor(_mensaje) = super(_mensaje)
}

object monedero {
	var plata = 500

	method plata() = plata

	method poner(cantidad) {
		self.validarMonto(cantidad)
		plata += cantidad
	}

	method sacar(cantidad) {
		self.validarMonto(cantidad)
		if (cantidad > plata) {
			throw new UserException("Debe retirar menos de " + plata)
		} 
		plata -= cantidad
	}

	method validarMonto(cantidad) {
		if (cantidad < 0) {
			throw new UserException("La cantidad a retirar debe ser positiva")
		}
	}
}
