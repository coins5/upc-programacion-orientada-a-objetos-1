require './Solicitante'
require './Turista'
require './Trabajador'
require './Residente'

class Program
	def initialize()
		@solicitantes = []
		@separador = 15
	end

	def agregarSolicitante (solicitante)
		@solicitantes.push(solicitante)
	end

	def listarSolicitantes ()
		imprimirDatosSolicitantes(@solicitantes)
	end

	def listarTodo ()
		imprimirDatosCompletosSolicitantes(@solicitantes)
	end

	def buscarSolicitantePorNDocumento (n)
		_solicitante = buscarSolicitantePorNumeroDocumento(n)
		if (_solicitante == false)
			imprimicerCabeceraCompleta()
			puts "No encontrado"
		else
			imprimirDatosCompletosSolicitantes([_solicitante])
		end
	end

	def buscarSolicitantePorEstado (estado)
		_solicitantes = _buscarSolicitantePorEstado(estado)
		if (_solicitantes.size == 0)
			imprimicerCabeceraCompleta()
			puts "No encontrado"
		else
			imprimirDatosCompletosSolicitantes(_solicitantes)
		end
	end

private

	def imprimicerCabecera ()
		print 'DOCUMENTO'.ljust(@separador)
		print 'NRO DOC'.ljust(@separador)
		print 'NOMBRE'.ljust(@separador)
		print 'APELLIDO'.ljust(@separador)
		print 'EDAD'.ljust(@separador)
		puts
		puts "-" * 5 * @separador
	end

	def imprimicerCabeceraCompleta ()
		print 'DOCUMENTO'.ljust(@separador)
		print 'NRO DOC'.ljust(@separador)
		print 'TIPO'.ljust(@separador)
		print 'NOMBRE'.ljust(@separador)
		print 'APELLIDO'.ljust(@separador)
		print 'EDAD'.ljust(@separador)
		print 'PUNTUACION'.ljust(@separador)
		print 'ESTADO'.ljust(@separador)
		puts
		puts "-" * 8 * @separador
	end

	def imprimirFila (solicitante)
		print solicitante.tipoDocumento.ljust(@separador)
		print solicitante.numeroDocumento.ljust(@separador)
		print solicitante.nombre.ljust(@separador)
		print solicitante.apellido.ljust(@separador)
		print solicitante.edad.to_s.ljust(@separador)
		puts
	end

	def imprimirFilaCompleta (solicitante)
		print solicitante.tipoDocumento.ljust(@separador)
		print solicitante.numeroDocumento.ljust(@separador)
		print solicitante.tipoSolicitante.ljust(@separador)
		print solicitante.nombre.ljust(@separador)
		print solicitante.apellido.ljust(@separador)
		print solicitante.edad.to_s.ljust(@separador)
		print solicitante.puntaje.to_s.ljust(@separador)
		print solicitante.estado.ljust(@separador)
		puts
	end

	def imprimirDatosSolicitantes (__solicitantes)
		imprimicerCabecera()
		for i in 0..__solicitantes.size-1
			imprimirFila(__solicitantes[i])
		end
	end

	def imprimirDatosCompletosSolicitantes (__solicitantes)
		imprimicerCabeceraCompleta()
		for i in 0..__solicitantes.size-1
			imprimirFilaCompleta(__solicitantes[i])
		end
	end

	def buscarSolicitantePorNumeroDocumento (__numeroDocumento)
		for i in 0..@solicitantes.size-1
			if (@solicitantes[i].numeroDocumento == __numeroDocumento)
				return @solicitantes[i]
			end
		end
		return false
	end

	def _buscarSolicitantePorEstado (__estado)
		resultado = []
		for i in 0..@solicitantes.size-1
			if (@solicitantes[i].estado == __estado)
				resultado.push(@solicitantes[i])
			end
		end
		return resultado
	end
end

s1 = Turista.new("DNI", "12345671", "Juan", "Perez", 25, 1500, "SI", "SI")
s2 = Trabajador.new("DNI", "12345672", "Maria", "Chavez", 35, 2000, "SI")
s3 = Residente.new("DNI", "12345673", "Pedro", "Otiniano", 35, 2500, "SI")
s4 = Turista.new("DNI", "12345674", "Juan", "Perez", 24, 1600, "SI", "NO")

p = Program.new
p.agregarSolicitante(s1)
p.agregarSolicitante(s2)
p.agregarSolicitante(s3)
p.agregarSolicitante(s4)

# Prueba unitaria A
p.listarSolicitantes()

puts 

# Prueba unitaria B
p.listarTodo()

puts

# Prueba unitaria C.1
p.buscarSolicitantePorNDocumento('12345671')

puts
# Prueba unitaria C.2
p.buscarSolicitantePorNDocumento('11111111')

puts

# Prueba unitaria D.1
p.buscarSolicitantePorEstado("Aprobada")

puts

# Prueba unitaria D.2
p.buscarSolicitantePorEstado("Rechazada")
