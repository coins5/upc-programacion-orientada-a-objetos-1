class Evaluacion
	attr_accessor :codigo, :puntaje
	def initialize(codigo)
		@codigo = codigo
		@puntaje = 0
	end

	def setPuntaje(pts)
		@puntaje = pts
	end
	
	
end