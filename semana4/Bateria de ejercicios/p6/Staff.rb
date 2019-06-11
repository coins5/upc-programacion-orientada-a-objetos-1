require './Trabajador.rb'
class Staff < Trabajador
	def initialize(nombre, dni, horasExtra, sueldoBase)
		super(nombre, dni, horasExtra, sueldoBase, 0.15)
		
	end
end