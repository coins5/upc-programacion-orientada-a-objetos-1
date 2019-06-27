require './Disco'
require './Usuario'
require './Factory'

class Program
	def initialize()
		@listaUsuario = []
		@listaDisco = []
		@listaBiblioteca = []
	end

	def crearDisco (tipo, *param)
		@listaDisco.push(Factory.crearDisco(tipo, *param))
	end

	def crearUsuario (dni, nombre)
		@listaUsuario.push(Factory.crearUsuario(dni, nombre))
	end

	def agregarBiblioteca (dni, codigo)
		@listaBiblioteca.push([dni, codigo])
	end

	def reporte ()
		@listaUsuario.each do |usuario|
			puts "Discos para el usuario #{usuario.nombre}"
			@listaBiblioteca.each do |biblioteca|
				if (usuario.dni == biblioteca[0])
					@listaDisco.each do |disco|
						if (biblioteca[1] == disco.codigo)
							print "#{disco.codigo}".ljust(10)
							print "#{disco.nombre}".ljust(10)
							puts
						end
					end 
				end
			end
			puts

		end
	end

private
	def buscarUsuario (dni)
		for i in 0..@listaUsuario.size-1
			if (@listaUsuario[i].dni == dni)
				return @listaUsuario[i]
			end
		end
		return false
	end

	def buscarDisco (codigo)
		for i in 0..@listaDisco.size-1
			if (@listaDisco[i].codigo == codigo)
				return @listaDisco[i]
			end
		end
		return false
	end
end

p = Program.new

p.crearDisco("C", "D01", "Disco 1", "Cantante 1", 15, 90)
p.crearDisco("C", "D02", "Disco 2", "Cantante 2", 14, 80)
p.crearDisco("D", "D03", "DvD 1", 4)
p.crearDisco("D", "D04", "DvD 2", 3)
p.crearDisco("B", "D05", "Pelicula 1", "director 1", 120)
p.crearDisco("B", "D06", "Pelicula 2", "director 1", 100)

p.crearUsuario("12345678", "usuario 1")
p.crearUsuario("12345679", "usuario 2")

p.agregarBiblioteca("12345678", "D01")
p.agregarBiblioteca("12345679", "D02")
p.agregarBiblioteca("12345678", "D03")
p.agregarBiblioteca("12345679", "D04")
p.agregarBiblioteca("12345678", "D05")
p.agregarBiblioteca("12345679", "D06")

p.reporte()