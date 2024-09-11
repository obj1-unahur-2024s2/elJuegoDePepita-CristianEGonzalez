import extras.*
import wollok.game.*

object pepita {
	var property energia = 100
	var property position = game.origin()

	method image() {
		return if (self.estaEnElNido()){
			"pepita-grande.png"}
			else if (self.estaCansada()){
				"pepita-gris.png"
			} else {"pepita.png"}
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method vola(kms) {
		energia = energia - kms * 9
	}

	method dentroDeLosLimites(pos){ return
		pos.x().between(0, game.width()-1) and
		pos.y().between(0, game.height()-1)
	}

	method irA(nuevaPosicion) {
		self.vola(position.distance(nuevaPosicion))
		position = if (self.dentroDeLosLimites(nuevaPosicion)) nuevaPosicion else position
	}

	method estaCansada() {
		return energia <= 0
	}

	method estaEnElNido() {
		return self.position() == nido.position()
	}

}

