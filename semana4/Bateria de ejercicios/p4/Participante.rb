class Participante
	attr_reader :nombre, :dni, :edad, :equipo, :codigoSecreto, :cantidadMensajesTexto, :cantidadLlamadas
	def initialize(nombre, dni, edad)
		@nombre, @dni, @edad = nombre, dni, edad
		@cantidadMensajesTexto = 0
		@cantidadLlamadas = 0
		@puntaje = 0
	end

	def agregarMensajesTexto (n)
		@cantidadMensajesTexto += n
	end

	def agregarCantidadLlamadas (n)
		@cantidadLlamadas += n
	end

	def calcularPuntaje ()
		@puntaje = (@cantidadMensajesTexto * 3) + (@cantidadLlamadas * 5)
		return @puntaje
	end
end