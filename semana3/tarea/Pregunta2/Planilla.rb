require './Programador'
class Planilla
	def initialize ()
		@programadores = []
		@separador = 15
	end

	def agregarProgramador (programador)
		@programadores.push(programador)
	end

	def Listartodos ()
		imprimirCabecera()
		@programadores.each { |p| imprimirFila(p) }
		puts 
	end

	def listarXGrado (grado)
		imprimirCabecera()
		@programadores.each do |p|
			if (p.grado == grado)
				imprimirFila(p)
			end
		end
		puts
	end

	def montoTotalXGrado (grado)
		result = 0
		@programadores.each do |p|
			if (p.grado == grado)
				result += p.sueldoTotal
			end
		end
		puts result
	end

	def listarReporte
		tecnico = 0
		bachiller = 0
		ingeniero = 0
		maestria = 0
		@programadores.each do |p|
			if (p.grado == 'TÉCNICO')
				tecnico += p.sueldoTotal
			elsif (p.grado == 'BACHILLER')
				bachiller += p.sueldoTotal
			elsif (p.grado == 'INGENIERO')
				ingeniero += p.sueldoTotal
			else
				maestria += p.sueldoTotal
			end
		end
		puts "TÉCNICO  : S/. #{tecnico}"
		puts "BACHILLER: S/. #{bachiller}"
		puts "INGENIERO: S/. #{ingeniero}"
		puts "MAESTRÍA : S/. #{maestria}"

	end

private
	def imprimirCabecera
		puts "-" * @separador * 8
		print "DNI".ljust(@separador)
		print "NOMBRE".ljust(@separador)
		print "APELLIDO".ljust(@separador)
		print "GRADO".ljust(@separador)
		print "HORAS".ljust(@separador)
		print "AÑOS".ljust(@separador)
		print "MIN".ljust(@separador)
		print "TOTAL".ljust(@separador)
		puts
		puts "-" * @separador * 8
	end

	def imprimirFila (programador)
		print programador.dni.ljust(@separador)
		print programador.nombre.ljust(@separador)
		print programador.apellido.ljust(@separador)
		print programador.grado.ljust(@separador)
		print programador.horastrabajadas.to_s.ljust(@separador)
		print programador.antiguedad.to_s.ljust(@separador)
		print programador.minutostardanza.to_s.ljust(@separador)
		print programador.sueldoTotal.to_s.ljust(@separador)
		puts
	end
end

objDoc1 = Programador.new("10000001", "Carlos1", "Arteaga1", 20, "MAESTRÍA", 2, 5)
objDoc2 = Programador.new("10000002", "Carlos2", "Arteaga2", 30, "BACHILLER", 10, 16)
objDoc3 = Programador.new("10000003", "Carlos3", "Arteaga3", 50, "BACHILLER", 12, 8)
objDoc4 = Programador.new("10000004", "Carlos4", "Arteaga4", 10, "INGENIERO", 5, 10)
objDoc5 = Programador.new("10000005", "Carlos5", "Arteaga5", 20, "INGENIERO", 7, 15)
objDoc6 = Programador.new("10000006", "Carlos6", "Arteaga6", 30, "MAESTRÍA", 3, 0)

p1 = Planilla.new
p1.agregarProgramador(objDoc1)
p1.agregarProgramador(objDoc2)
p1.agregarProgramador(objDoc3)
p1.agregarProgramador(objDoc4)
p1.agregarProgramador(objDoc5)
p1.agregarProgramador(objDoc6)

# Prueba unitaria A: Listar todos los programadores
p1.Listartodos()

# Prueba unitaria B: Listar por grado
p1.listarXGrado("BACHILLER")
p1.listarXGrado("INGENIERO")

# Prueba unitaria C: 
p1.montoTotalXGrado("BACHILLER")
p1.montoTotalXGrado("INGENIERO")

# Prueba unitaria D:
p1.listarReporte()