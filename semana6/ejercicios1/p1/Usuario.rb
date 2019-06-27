class Usuario
	attr_reader :dni, :nombre
	def initialize(dni, nombre)
		@dni, @nombre = dni, nombre
	end
end