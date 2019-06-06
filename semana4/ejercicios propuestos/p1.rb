class Trabajador
	def initialize(nombre, horasTrabajadas, costoHora)
		@nombre, @horasTrabajadas, @costoHora = nombre, horasTrabajadas, costoHora
	end

	def sueldo ()
		return @horasTrabajadas * @costoHora
	end
end

class TrabajadorONP < Trabajador
	def sueldo ()
		return (super() * 0.85).round(2)
	end
end

class TrabajadorAFP < Trabajador
	def sueldo ()
		return (super() * 0.80).round(2)
	end
end

tonp = TrabajadorONP.new("U1", 20, 5)
tafp = TrabajadorAFP.new("U2", 20, 5)

puts tonp.sueldo()
puts tafp.sueldo()
