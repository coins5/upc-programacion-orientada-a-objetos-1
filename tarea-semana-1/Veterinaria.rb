class Perro
	attr_accessor :nombre
	attr_accessor :raza
	attr_accessor :tamano
	attr_accessor :estaVacunado

	def initialize(nombre: '', raza: '', tamano: '')
		@nombre = nombre
		@raza = raza
		@tamano = tamano # pequeño, mediano, grande

		@estaVacunado = false
	end
end
  
class Veterinaria
	def initialize()
		@costo_base_bano = 10
		@costo_base_vacuna = 20
	end

	def costoBano(perro)
		factorCoste = 1

		case perro.tamano
			when 'pequeño'
				factorCoste = 1
			when 'mediano'
				factorCoste = 1.2
			when 'grande'
				factorCoste = 1.5
		end

		return @costo_base_bano * factorCoste
	end

	def costoVacuna(perro)
		if (perro.estaVacunado)
			puts "El perro #{perro.nombre} ya está vacunado"
			return 0
		end
		puts "Se procede a vacunar al perro #{perro.nombre}"
		factorCoste = 1

		case perro.tamano
			when 'pequeño'
				factorCoste = 1.2
			when 'mediano'
				factorCoste = 1.8
			when 'grande'
				factorCoste = 2.0
		end

		perro.estaVacunado = true

		return @costo_base_vacuna * factorCoste
	end

	def banar(perro)
		puts "---------------"
		puts "Tamaño de perro: #{perro.tamano}"

		cb = costoBano(perro)
		cv = costoVacuna(perro)
		costoTotal = cb + cv

		puts "Costo base de baño: #{@costo_base_bano} -> Costo total considerando tamaño de perro #{cb}"
		puts "Costo base de vacuna: #{@costo_base_vacuna} -> Costo total considerando tamaño de perro #{cv}"
		puts "Costo Baño: #{cb} | Costo Vacuna: #{cv} |Costo total: #{costoTotal}"
		puts "---------------"
	end
end

class Program
	def initialize()
		# Instanciando veterianaria
		@vet = Veterinaria.new()
		
		# Perros registrados
		@perros = []
	end

	def menu()
		system("cls")
		opciones = []
		puts "Bienvenido. ¿Qué desea hacer?"
		puts "\t1. Registrar un perro"
		puts "\t2. Bañar perro"
		puts "\t3. Salir"
	
		selected = gets.chomp.to_s
	
		case selected
			when "1"
				return registrarPerro()
			when "2"
				return mostrarPerros()
			when "3"
				return despedir()
		end

		return menu()
	end

	def despedir()
		puts "Gracias por usar el sistema"
	end
	
	def registrarPerro()
		system("cls")
		puts("--- REGISTRANDO PERRO ---")

		print "Nombre del perro: "
		nombre = gets.chomp.to_s

		print "Raza: "
		raza = gets.chomp.to_s

		print "Tamaño (mediano, pequeño, grande): "
		tamano = gets.chomp.to_s
		
		@perros.push(Perro.new(nombre: nombre, raza: raza, tamano: tamano))
		return menu()
	end

	def mostrarPerros()
		puts "Seleccione un perro para bañar: "
		for i in 0..@perros.size - 1
			perro = @perros[i]
			puts "\t#{i}. #{perro.nombre} - #{perro.raza} (#{perro.tamano})"
		end
		puts "Para salir presione \"S\""
		opcion = gets.chomp.to_s

		if (opcion.upcase == "S" )
			return menu()
		end

		opcion = opcion.to_i

		if (opcion < @perros.size)
			@vet.banar(@perros[opcion])
			return mostrarPerros()
		else 
			puts "Opcion incorrecta. Debe seleccionar uno de los números de la lista de perros"
			return mostrarPerros()
		end
	end
end

Program.new().menu()
