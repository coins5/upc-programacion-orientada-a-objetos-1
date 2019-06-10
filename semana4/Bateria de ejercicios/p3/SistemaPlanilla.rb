require('./Obrero.rb')
require('./Administrativo.rb')
require('./Practicante.rb')

class SistemaPlanilla
	attr_reader :listaPersonas 
	def initialize()
		@listaPersonas = []
	end

	def agregarTrabajador(trabajador)
		agregarPersona(trabajador)
	end

	def obtenerSumaTodosSueldos ()
		result = 0
		for i in 0..@listaPersonas.size - 1
			result += @listaPersonas[i].sueldo
		end
		return result
	end

	def buscarSueldoTrabajador (dni)
		for i in 0..@listaPersonas.size - 1
			p = @listaPersonas[i]
			if (dni == p.dni)
				puts "El sueldo de #{p.nombre} es #{p.sueldo}"
				return true
			end
		end
		puts "No es encontro al trabajador con dni #{dni}"
		return false
	end

private
	def agregarPersona (persona)
		if (existePersona(persona.dni))
			puts "La persona #{persona.nombre} con dni ya #{persona.dni} existe"
		else
			@listaPersonas.push(persona)	
		end
	end
	def existePersona (dni)
		for i in 0..@listaPersonas.size - 1
			if (dni == @listaPersonas[i].dni)
				return true
			end
		end
		return false
	end
end

s1 = SistemaPlanilla.new()
s1.agregarTrabajador(Obrero.new("Perona 1", "12345671", 5, 1))
s1.agregarTrabajador(Obrero.new("Perona 2", "12345672", 6, 2))
s1.agregarTrabajador(Obrero.new("Perona 3", "12345673", 7, 3))
s1.agregarTrabajador(Obrero.new("Perona 3B", "12345673", 7, 3))

s1.agregarTrabajador(Administrativo.new("Perona 4", "12345674", 2000, 100))
s1.agregarTrabajador(Practicante.new("Perona 5", "12345675", 1000))

puts "La suma de todos los sueldos es #{s1.obtenerSumaTodosSueldos()}"
puts "Existen #{s1.listaPersonas.size} trabajadores"

s1.buscarSueldoTrabajador("12345673")
s1.buscarSueldoTrabajador("12345676")