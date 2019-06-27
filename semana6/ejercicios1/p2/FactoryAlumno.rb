class FactoryAlumno
	def self.crear(tipo, codigo, nombre, apellido)
		case tipo
			when "traslado" then AlumnoTraslado.new(codigo, nombre, apellido)
			when "becado" then AlumnoBecado.new(codigo, nombre, apellido)
			when "regular" then AlumnoRegular.new(codigo, nombre, apellido)
		end
	end
end
