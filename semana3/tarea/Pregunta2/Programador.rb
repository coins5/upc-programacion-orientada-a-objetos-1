class Programador
	attr_reader :dni, :nombre, :apellido, :horastrabajadas, :grado, :antiguedad, :minutostardanza, :sueldoTotal
	def initialize (dni, nombre, apellido, horastrabajadas, grado, antiguedad, minutostardanza)
		@dni = dni
		@nombre = nombre
		@apellido = apellido
		@grado = grado
		@antiguedad = antiguedad
		@horastrabajadas = horastrabajadas
		@minutostardanza = minutostardanza

		@sueldoTotal = (setSueldo(horastrabajadas, grado) * setPorcAumento(antiguedad)) + setBonoTardanza(minutostardanza)
	end

private
	def setSueldo (horas, grado)
		sueldoHora = 0
		if (grado == "TÉCNICO")
			sueldoHora = 30
		elsif (grado == "BACHILLER")
			sueldoHora = 40
		elsif (grado == "INGENIERO")
			sueldoHora = 70
		else
			sueldoHora = 100
		end
		return horas * sueldoHora
	end

	def setPorcAumento (antiguedad)
		if (antiguedad < 4)
			return 1.03
		elsif (antiguedad <= 6)
			return 1.04
		elsif (antiguedad <= 10)
			return 1.05
		elsif (antiguedad <= 15)
			return 1.07
		else
			return 1.1
		end
	end

	def setBonoTardanza (minutostardanza)
		if (minutostardanza == 0)
			return 200
		elsif (minutostardanza <= 5)
			return 50
		elsif (minutostardanza <= 10)
			return 20
		elsif (minutostardanza <= 15)
			return 0
		else
			return -40
		end
	end
end