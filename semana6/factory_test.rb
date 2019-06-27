class Mascota
	attr_accessor :nombre
	def initialize(nombre)
		@nombre = nombre
	end	
end

class Perro < Mascota
end

class Gato < Mascota
end