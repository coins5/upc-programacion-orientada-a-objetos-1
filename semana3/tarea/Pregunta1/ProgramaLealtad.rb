require './Distrito'
require './Cliente'

class ProgramaSocios
	attr_reader :socio
	def initialize ()
		@socios = []
		@separador = 15
	end
	def agregarSocio (socio)
		@socios.push(socio)
	end

	def listarTodos ()
		imprimirCabecera()
		@socios.each { |s| imprimirFila(s) }
		puts
	end

	def listarPorDistrito (nombreDistrito)
		imprimirCabecera()
		@socios.each do |s|
			if (s.distrito.nombre == nombreDistrito)
				imprimirFila(s)
			end
		end
		puts
	end

	def listarPorCategoria (nombreCategoria)
		imprimirCabecera()
		@socios.each do |s|
			if (s.categoria == nombreCategoria)
				imprimirFila(s)
			end
		end
		puts
	end

	def puntosPorDistrito (nombreDistrito)
		result = 0
		@socios.each do |s|
			if (s.distrito.nombre == nombreDistrito)
				result += s.puntos
			end
		end
		puts result
	end

	def puntosPorCategoria (nombreCategoria)
		result = 0
		@socios.each do |s|
			if (s.categoria == nombreCategoria)
				result += s.puntos
			end
		end
		puts result
	end

private 
	def imprimirCabecera
		puts "-" * @separador * 6
		print "DNI".ljust(@separador)
		print "NOMBRE".ljust(@separador)
		print "APELLIDO".ljust(@separador)
		print "PUNTOS".ljust(@separador)
		print "DISTRITO".ljust(@separador)
		print "CATEGORIA".ljust(@separador)
		puts
		puts "-" * @separador * 6
	end

	def imprimirFila (socio)
		print socio.codigo.ljust(@separador)
		print socio.nombre.ljust(@separador)
		print socio.apellido.ljust(@separador)
		print socio.puntos.to_s.ljust(@separador)
		print socio.distrito.nombre.ljust(@separador)
		print socio.categoria
		puts
	end
end

objDistrito1 = Distrito.new("D001", "Lince")
objDistrito2 = Distrito.new("D002", "Comas")
objDistrito3 = Distrito.new("D003", "S.J.L.")

objCliente1 = Cliente.new("38357651", "Jose  ", "Chavez", 500, objDistrito1)
objCliente2 = Cliente.new("38357652", "Luis  ", "Piro  ", 400, objDistrito2)
objCliente3 = Cliente.new("38357653", "Pedro ", "Vargas", 200, objDistrito2)
objCliente4 = Cliente.new("38357654", "Manuel", "Calle ", 300, objDistrito3)
objCliente5 = Cliente.new("38357655", "Carlos", "Carrot", 600, objDistrito3)

# Instanciando Programa de socios
p1 = ProgramaSocios.new()

# Agregando socios creados
p1.agregarSocio(objCliente1)
p1.agregarSocio(objCliente2)
p1.agregarSocio(objCliente3)
p1.agregarSocio(objCliente4)
p1.agregarSocio(objCliente5)

# Prueba unitaria A: Listar todos los socios
p1.listarTodos()

# Prueba unitaria B: Listar por distritos
p1.listarPorDistrito("Comas")
p1.listarPorDistrito("Lince")

# Prueba unitaria C: Listar por categoria
p1.listarPorCategoria("BÁSICO")
p1.listarPorCategoria("MEDIANO")

# Prueba unitaria D: Punto por distrito
p1.puntosPorDistrito("Lince")
p1.puntosPorDistrito("Comas")

p1.puntosPorCategoria("BÁSICO")
p1.puntosPorCategoria("MEDIANO")
