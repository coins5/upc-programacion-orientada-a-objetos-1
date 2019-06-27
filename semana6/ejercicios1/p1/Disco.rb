class Disco
	attr_reader :nombre, :codigo, :cantante, :npistas, :total, :ndatos, :director, :tiempo
	def initialize(codigo, nombre)
		@codigo, @nombre = codigo, nombre
	end
end

class Cd < Disco
	def initialize(codigo, nombre, cantante, npistas, total)
		super(codigo, nombre)
		@cantante, @npistas, @total = cantante, npistas, total
	end
end

class Dvd < Disco
	def initialize(codigo, nombre, ndatos)
		super(codigo, nombre)
		@ndatos = ndatos
	end
end

class Blueray < Disco
	def initialize(codigo, nombre, director, tiempo)
		super(codigo, nombre)
		@director, @tiempo = director, tiempo
	end
end
