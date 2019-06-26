class Invitado < Socio
	def initialize(dni, nombre, apellido, edad, nDependientes)
		super(dni, nombre, apellido, edad)
		@nDependientes = nDependientes
		@costoMembresia = calcularMembresia()
		@tipoSocio = 'I'
	end
end