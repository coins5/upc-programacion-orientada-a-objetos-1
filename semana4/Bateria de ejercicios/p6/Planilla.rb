require './Staff.rb'
require './Regular.rb'

class Planilla
	def initialize()
		@listaTrabajadores = []
	end

	def agregarTrabajador (trabajador)
		if (trabajador.isValid())
			if (exists(trabajador.dni))
				puts "El DNI #{trabajador.dni} (#{trabajador.nombre}) ya existe"
				return
			else
				return @listaTrabajadores.push(trabajador)
			end
		end
		puts "El trabajador #{trabajador.nombre} no es valido"
	end

	def calcularPlanilla ()
		result = 0
		for i in 0..@listaTrabajadores.size-1
			result += @listaTrabajadores[i].sueldoNeto
		end
		return result
	end

	def calcularPromedioHorasExtra ()
		result = 0.0
		for i in 0..@listaTrabajadores.size-1
			result += @listaTrabajadores[i].horasExtra
		end

		return result / @listaTrabajadores.size
	end
private
	def exists (dni)
		for i in 0..@listaTrabajadores.size-1
			if (@listaTrabajadores[i].dni == dni)
				return true
			end 
		end
		return false
	end
end

p = Planilla.new()
p.agregarTrabajador(Staff.new("Trabajador 1", "12345678", 52, 825))
p.agregarTrabajador(Staff.new("Trabajador 2", "12345678", 52, 825))
p.agregarTrabajador(Staff.new("Trabajador 3", "12345671", 52, 825))
p.agregarTrabajador(Regular.new("Trabajador 4", "12345672", 52, 825))
p.agregarTrabajador(Regular.new("Trabajador 5", "12345673", 52, 825))
p.agregarTrabajador(Regular.new("Trabajador 6", "12345674", 52, 825))

puts "Total de planilla a pagar: #{p.calcularPlanilla()}"
puts "Media de horas extra: #{p.calcularPromedioHorasExtra()}"
