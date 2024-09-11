import pepita.*
import comidas.*
import extras.*
import wollok.game.*

object tutorial1 {

	method iniciar() {
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisualCharacter(pepita)
	}

}

object tutorial2 {

	method iniciar() {
		//game.addVisual(manzana)
		//game.addVisual(alpiste)
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.onTick(2500, silvestre, {silvestre.perseguirPepita()})
		game.addVisual(pepita)
		config.configurarTeclas()
	}

}

object tutorial3 {

	method iniciar() {
		game.addVisual(manzana)
		game.addVisual(alpiste)
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisual(pepita)
		config.configurarTeclas()
		config.configurarColisiones()
	}

}

object config {

	method configurarTeclas() {
		keyboard.a().onPressDo({ pepita.irA(pepita.position().left(1))})
		keyboard.d().onPressDo({ pepita.irA(pepita.position().right(1))})
		keyboard.w().onPressDo({ pepita.irA(pepita.position().up(1))})
		keyboard.s().onPressDo({ pepita.irA(pepita.position().down(1))})
	}

	method configurarColisiones() {
		game.onCollideDo(pepita, { algo => algo.teEncontro(pepita)})
	}

}

