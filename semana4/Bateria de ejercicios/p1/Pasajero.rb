class Pasajero
	attr_reader :dni, :nombre, :desde, :hasta
	def initialize(dni, nombre, desde, hasta)
		@dni, @nombre, @desde, @hasta = dni, nombre, desde, hasta
	end
end