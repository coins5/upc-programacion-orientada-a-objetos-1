class Socio
	attr_accessor :dni, :nombre, :apellido, :edad, :nDependientes, :costoMembresia, :tipoSocio
	def initialize(dni, nombre, apellido, edad)
		@dni, @nombre, @apellido, @edad = dni, nombre, apellido, edad
		@nDependientes = 0
	end

private
	def calculaFactorEdad ()
		if (@edad >= 18 && @edad <=30) 
			return 5
		elsif @edad <= 50
			return 4
		else
			return 3
		end	
	end

	def calcularMembresia () 
		return (calculaFactorEdad() * 200) + (@nDependientes * 100)
	end
end