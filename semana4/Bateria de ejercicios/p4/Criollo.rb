require('./Participante.rb')
class Criollo < Participante
	def initialize(nombre, edad, dni, equipo)
		super(nombre, edad, dni)
		@equipo = equipo
		@equipoValido = validarEquipo(equipo)
	end

private
	def validarEquipo (equipo)
		return equipo == 'limeño' || equipo == 'samba'
	end
end