require('./Persona.rb')
class Administrativo < Persona
	attr_reader :sueldoBase, :cantidadVentas
	def initialize(nombre, dni, sueldoBase, cantidadVentas)
		super(nombre, dni)
		@sueldoBase, @cantidadVentas = sueldoBase, cantidadVentas
		@sueldo = calcularSueldo()
	end
private
	def calcularSueldo ()
		return @sueldoBase + (0.05 * @cantidadVentas)
	end
end