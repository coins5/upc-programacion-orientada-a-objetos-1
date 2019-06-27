class Alumno
	attr_reader :codigo, :nombre, :apellido
	def initialize(codigo, nombre, apellido)
		@codigo, @nombre, @apellido = codigo, nombre, apellido
	end
end

class AlumnoTraslado < Alumno
end

class AlumnoBecado < Alumno
end

class AlumnoRegular < Alumno
end
