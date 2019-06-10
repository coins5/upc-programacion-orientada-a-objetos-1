require('./Persona.rb')
class Practicante < Persona
	attr_reader :sueldoBase
	def initialize(nombre, dni, sueldoBase)
		super(nombre, dni)
		@sueldoBase = sueldoBase
		@sueldo = calcularSueldo()
	end
private
	def calcularSueldo ()
		return @sueldoBase * 0.88
	end
end