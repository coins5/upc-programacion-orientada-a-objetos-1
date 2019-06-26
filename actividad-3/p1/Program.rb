require './Socio'
require './Fundador'
require './Honorario'
require './Invitado'

class Program
	def initialize()
		@socios = []
		@separador = 15
	end

	def agregarSocio (socio)
		@socios.push(socio)
	end

	def listarTodos ()
		imprimirCabecera()
		for i in 0..@socios.size-1
			imprimirFila(@socios[i])
		end
	end

	def listarDatosSocio (dni)
		socio = buscarSocio(dni)
		if (socio == false)
			puts "No se encontró al socio"
		else
			imprimirCabecera()
			imprimirFila(socio)
		end
	end

	def listarPorTipo (tipoSocio)
		__socios = buscarSocioPorTipo(tipoSocio)
		if (__socios.size == 0)
			puts "No se encontraron socios de ese tipo #{tipoSocio}"
		else
			imprimirCabeceraTipoSocio()
			for i in 0..__socios.size-1
				imprimirFilaTipoSocio(__socios[i])
			end
		end
	end

	def mostrarTotalMembresias ()
		total = 0
		for i in 0..@socios.size-1
			total += @socios[i].costoMembresia
		end
		puts "El total de membresias es #{total}"
	end
private
	
	def imprimirCabecera ()
		print 'DNI'.ljust(@separador)
		print 'Nombre'.ljust(@separador)
		print 'Apellido'.ljust(@separador)
		print 'Edad'.ljust(@separador)
		print 'Dependientes'.ljust(@separador)
		print 'Membresia'.ljust(@separador)
		puts
		puts "-" * 6 * @separador
	end

	def imprimirCabeceraTipoSocio ()
		print 'DNI'.ljust(@separador)
		print 'Nombre'.ljust(@separador)
		print 'Apellido'.ljust(@separador)
		print 'Edad'.ljust(@separador)
		print 'Tipo'.ljust(@separador)
		puts
		puts "-" * 5 * @separador
	end 

	def imprimirFila (socio)
		print socio.dni.ljust(@separador)
		print socio.nombre.ljust(@separador)
		print socio.apellido.ljust(@separador)
		print socio.edad.to_s.ljust(@separador)
		print socio.nDependientes.to_s.ljust(@separador)
		print socio.costoMembresia.to_s.ljust(@separador)
		puts
	end

	def imprimirFilaTipoSocio (socio)
		print socio.dni.ljust(@separador)
		print socio.nombre.ljust(@separador)
		print socio.apellido.ljust(@separador)
		print socio.edad.to_s.ljust(@separador)
		print socio.tipoSocio.to_s.ljust(@separador)
		puts
	end

	def buscarSocio (dni)
		for i in 0..@socios.size-1
			if (@socios[i].dni == dni)
				return @socios[i]
			end
		end
		return false
	end

	def buscarSocioPorTipo (tipoSocio)
		result = []
		for i in 0..@socios.size-1
			if (@socios[i].tipoSocio == tipoSocio)
				result.push(@socios[i])
			end
		end
		return result
	end
end

s1 = Fundador.new('12345671', 'Juan', 'Perez', 25, 3)
s2 = Invitado.new('12345672', 'Maria', 'Salinas', 30, 4)
s3 = Fundador.new('12345673', 'Ana', 'Chavez', 24, 2)
s4 = Honorario.new('12345674', 'Pedro', 'Chavez', 35)

p = Program.new()
p.agregarSocio(s1)
p.agregarSocio(s2)
p.agregarSocio(s3)
p.agregarSocio(s4)

# Prueba unitaria A
p.listarTodos()

puts

# Prueba unitaria B
p.listarDatosSocio('12345671')

puts

# Prueba unitaria C
p.listarPorTipo('F')

puts

# Prueba unitaria D
p.mostrarTotalMembresias()