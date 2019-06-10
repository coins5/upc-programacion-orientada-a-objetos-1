class Persona
	attr_reader :nombre, :dni, :sueldo
	def initialize(nombre, dni)
		@nombre, @dni = nombre, dni
	end

end