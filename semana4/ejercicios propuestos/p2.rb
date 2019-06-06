require './Clientes.rb'
class ListaCliente
	attr_accessor :lista
	def initialize()
		@lista = []
	end

	def agregarCliente (objCliente)
		# Validar que un cliente no sea registrado con el mismo dni

		@lista.each do |item|
			if (item.dni == objCliente.dni) 
				puts "El cliente ya existe con dni #{objCliente.dni}"
				return 
			end
		end
		@lista.push(objCliente)
	end

	def reporte ()
		separatorLength = 20
		print "DNI".ljust(separatorLength)
		print "NOMBRE".ljust(separatorLength)
		print "N VISITAS".ljust(separatorLength)
		print "N AUTOS".ljust(separatorLength)
		print "FACTOR".ljust(separatorLength)
		puts
		print "-" * separatorLength * 5
		print "\n"
		@lista.each do |item|
			print "#{item.dni}".ljust(separatorLength)
			print "#{item.nombre}".ljust(separatorLength)
			print "#{item.visitasAcumuladas}".ljust(separatorLength)
			print "#{item.numeroAutos}".ljust(separatorLength)
			print "#{item.factor}".ljust(separatorLength)
			print "\n"
		end
	end

	def sumaFactores ()
		suma = 0
		@lista.each do |item|
			suma += item.factor
		end
		puts "La suma de los factores es #{suma}"
	end

	def cantidadClientes
		puts "La cantidad de clientes es #{@lista.size}"
	end

	def busqueda (dni)
		separatorLength = 20
		print "DNI".ljust(separatorLength)
		print "NOMBRE".ljust(separatorLength)
		print "N VISITAS".ljust(separatorLength)
		print "N AUTOS".ljust(separatorLength)
		print "FACTOR".ljust(separatorLength)
		puts
		print "-" * separatorLength * 5
		print "\n"
		@lista.each do |item|
			if (item.dni == dni) 
				print "#{item.dni}".ljust(separatorLength)
				print "#{item.nombre}".ljust(separatorLength)
				print "#{item.visitasAcumuladas}".ljust(separatorLength)
				print "#{item.numeroAutos}".ljust(separatorLength)
				print "#{item.factor}".ljust(separatorLength)
				print "\n"
			end
		end
	end

	# Reporte todos lo que tienen factor mayor a 10
	def factorMayor (n)
		separatorLength = 20
		print "DNI".ljust(separatorLength)
		print "NOMBRE".ljust(separatorLength)
		print "N VISITAS".ljust(separatorLength)
		print "N AUTOS".ljust(separatorLength)
		print "FACTOR".ljust(separatorLength)
		puts
		print "-" * separatorLength * 5
		print "\n"
		@lista.each do |item|
			if (item.factor > 10) 
				print "#{item.dni}".ljust(separatorLength)
				print "#{item.nombre}".ljust(separatorLength)
				print "#{item.visitasAcumuladas}".ljust(separatorLength)
				print "#{item.numeroAutos}".ljust(separatorLength)
				print "#{item.factor}".ljust(separatorLength)
				print "\n"
			end
		end
	end
end

li = ListaCliente.new()

cliente = ClienteRegular.new("c1", "12345678")
li.agregarCliente(cliente)

cliente = ClienteFrecuente.new("c2", "14785296", 10)
li.agregarCliente(cliente)

cliente = ClienteVIP.new("c3", "99999999", 3)
li.agregarCliente(cliente)

cliente = ClienteVIP.new("c3", "99999999", 3)
li.agregarCliente(cliente)

li.reporte()
puts
li.sumaFactores()
puts
li.cantidadClientes()
puts
li.busqueda("99999999")
puts

puts "LISTANDO LOS QUE TIENEN FACTOR MAYOR A 10"
li.factorMayor(10)