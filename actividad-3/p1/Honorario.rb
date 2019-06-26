class Honorario < Socio
	def initialize(dni, nombre, apellido, edad)
		super(dni, nombre, apellido, edad)
		@nDependientes = nDependientes
		@costoMembresia = 200
		@tipoSocio = 'H'
	end
end