require('./Participante.rb')
class Rock < Participante
	def initialize(nombre, edad, dni, codigoSecreto)
		super(nombre, edad, dni)
		@codigoSecreto = codigoSecreto
	end
end