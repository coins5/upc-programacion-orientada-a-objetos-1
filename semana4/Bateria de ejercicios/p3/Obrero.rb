require('./Persona.rb')
class Obrero < Persona
	attr_reader :horasTrabajadas, :horasExtras
	def initialize (nombre, dni, horasTrabajadas, horasExtras)
		super(nombre, dni)
		@horasTrabajadas, @horasExtras = horasTrabajadas, horasExtras
		@sueldo = calcularSueldo()
	end
private 
	def calcularSueldo ()
		return (@horasTrabajadas * 25) + (@horasExtras * 50)
	end
end