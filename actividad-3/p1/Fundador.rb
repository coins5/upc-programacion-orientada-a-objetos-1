class Fundador < Socio
	def initialize(dni, nombre, apellido, edad, nDependientes)
		super(dni, nombre, apellido, edad)
		@nDependientes = nDependientes
		@costoMembresia = calcularMembresia() * 0.8
		@tipoSocio = 'F'
	end
end