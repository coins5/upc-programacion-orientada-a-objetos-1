require './Pasajero.rb'

class Transporte 
	def initialize (codigo, limitePasajeros)
		@codigo, @limitePasajeros = codigo, limitePasajeros
		@listaPasajeros = []

		@spaceLength = 15
	end
	
	def recogerPasajero (pasajero)
		if (@listaPasajeros.size < @limitePasajeros)
			@listaPasajeros.push(pasajero)
		else
			puts "El transporte está lleno. No se puede recoger a #{pasajero.nombre}"
		end
	end
	
	def dejarPasajeros ()
		@listaPasajeros = []
	end

	def listarPasajeros ()
		printPasajeros(@listaPasajeros)
	end
private 
	def printPasajeros (list)
		printCabecera()
		list.each do |p|
			print "#{p.dni}".ljust(@spaceLength)
			print "#{p.nombre}".ljust(@spaceLength)
			print "#{p.desde}".ljust(@spaceLength)
			print "#{p.hasta}".ljust(@spaceLength)
			puts
		end
	end
	def printCabecera ()
		print "DNI".ljust(@spaceLength)
		print "NOMBRE".ljust(@spaceLength)
		print "DESDE".ljust(@spaceLength)
		print "HASTA".ljust(@spaceLength)
		puts
		print "-" * @spaceLength * 4
		puts
	end
end

class Taxi < Transporte
	def recogerPasajero (pasajero)
		# Solo se pueden recoger pasajeros si el taxi está vacío
		if (@listaPasajeros.size == 0)
			super(pasajero)
		else
			# Recoger a los acompañantes del primer pasajero
			if (pasajero.desde == @listaPasajeros[0].desde)
				super(pasajero)
			else
				puts "El taxi no puede recoger a #{pasajero.nombre} porque no acompaña a #{@listaPasajeros[0].nombre}"
			end
		end
	end

	def dejarPasajeros ()
		super()
		puts "El taxi ha sido liberado"
	end
end

class TrasladoViajero < Transporte
	def dejarPasajeros ()
		super()
		puts "El bus ha sido liberado"
	end
end

class EmpresaTransporte
	def initialize()
		@listaTaxis = []
		@listaTrasladoViajero = []
	end
	def agregarTaxi (codigo, limitePasajeros)
		@listaTaxis.push(Taxi.new(codigo, limitePasajeros))
	end
	def agregarTrasladoViajero (codigo, limitePasajeros)
		@listaTrasladoViajero.push(TrasladoViajero.new(codigo, limitePasajeros))
	end
end

t = Taxi.new("T001", 5)
t.recogerPasajero(Pasajero.new("12345671", "Pepito1", "HOTEL 1", "AEROPUERTO"))
t.recogerPasajero(Pasajero.new("12345672", "Pepito2", "HOTEL 1", "AEROPUERTO"))
t.recogerPasajero(Pasajero.new("12345673", "Pepito3", "HOTEL 1", "AEROPUERTO"))
t.recogerPasajero(Pasajero.new("12345674", "Pepito4", "HOTEL 1", "AEROPUERTO"))
t.recogerPasajero(Pasajero.new("12345675", "Pepito5", "HOTEL 1", "AEROPUERTO"))
t.recogerPasajero(Pasajero.new("12345676", "Pepito6", "HOTEL 1", "AEROPUERTO"))
t.recogerPasajero(Pasajero.new("12345677", "Pepito7", "HOTEL 2", "AEROPUERTO"))

t.listarPasajeros()
