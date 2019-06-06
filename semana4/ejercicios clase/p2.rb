class Mascota
	def sonido
		return "Soy un animal y hago: "
	end
end

class Perro < Mascota
	def sonido
		return super() + "guau guau"
	end
end

class Gato < Mascota
	def sonido
		return super() + "miau"
	end
end

p = Perro.new()
puts p.sonido()

g = Gato.new()
puts g.sonido()
