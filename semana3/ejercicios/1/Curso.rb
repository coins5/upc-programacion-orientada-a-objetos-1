class Curso
	attr_accessor :codigo, :nombre, :creditos
	def initialize(codigo, nombre, creditos)
		@codigo = codigo
		@nombre = nombre
		@creditos = creditos
	end
	
end