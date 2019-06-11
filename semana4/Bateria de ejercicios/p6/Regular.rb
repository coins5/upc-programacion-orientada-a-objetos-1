require './Trabajador.rb'
class Regular < Trabajador
	def initialize(nombre, dni, horasExtra, sueldoBase)
		super(nombre, dni, horasExtra, sueldoBase, 0.12)
	end
end