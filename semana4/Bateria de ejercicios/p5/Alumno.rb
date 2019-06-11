class Alumno
	attr_reader :codigo, :nombre, :edad, :nivel, :pagoMatricula, :pagoActividades, :pagoMes 
	def initialize(codigo, nombre, edad, nActividades)
		@codigo, @nombre, @edad = codigo, nombre, edad
		@nivel = setNivel(edad)
		@pagoMatricula = setNivel(edad)
		@pagoActividades = setPagoPorActividades(nActividades)
		@pagoMes = setPagoMes(edad, nActividades)
	end

private
	def setNivel (edad)
		if (edad < 5)
			return 'infante'
		elsif edad < 12
			return 'niño'
		elsif edad < 17
			return 'joven'
		else
			return 'adulto'
		end
	end
	def setPagoPorNivel (edad)
		if (edad < 5)
			return 150
		elsif edad < 12
			return 200
		elsif edad < 17
			return 220
		else
			return 250
		end
	end
	def setPagoPorActividades (nActividades)
		if (nActividades == 1)
			return 10
		elsif nActividades == 2
			return 18
		elsif nActividades == 3
			return 26
		else
			return 35
		end
	end

	def setPagoMes (edad, nActividades)
		return setPagoPorNivel(edad) + setPagoPorActividades(nActividades)
	end
end

a1 = Alumno.new("A001", "Alumno 1", 6, 4)
a2 = Alumno.new("A002", "Alumno 2", 8, 3)
a3 = Alumno.new("A003", "Alumno 3", 16, 2)
a4 = Alumno.new("A004", "Alumno 4", 21, 1)

puts "El alumno #{a1.nombre} pagará S/. #{a1.pagoMes}"
puts "El alumno #{a2.nombre} pagará S/. #{a2.pagoMes}"
puts "El alumno #{a3.nombre} pagará S/. #{a3.pagoMes}"
puts "El alumno #{a4.nombre} pagará S/. #{a4.pagoMes}"
