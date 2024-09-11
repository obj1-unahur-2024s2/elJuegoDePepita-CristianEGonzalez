import randomizer.*
import pepita.*
import wollok.game.*

object nido {
	var property position = game.at(8,7)
	method image() = "nido.png"
}

object silvestre {
	var property position = game.at(8,0)

	method image() = "silvestre.png"
	
	method perseguirPepita(){
		if (pepita.position().x() < self.position().x() and self.position().x()>3){
			position = self.position().left(1)
		}else if (self.position().x() < game.width()-1){
			position = self.position().right(1)
		}
	}
}

