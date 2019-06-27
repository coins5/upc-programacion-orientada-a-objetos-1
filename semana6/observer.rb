require 'observer'

class Notificador
	def update (auto, recorrido)
		puts "El auto ha recorrido #{recorrido} km, Acumulando #{auto.recorrido} km."
		if (recorrido > auto.mantenimiento)
			puts "El auto necesita mantenimiento"
		end
	end
end

class Auto
	include Observable

	attr_accessor :recorrido, :mantenimiento
	def initialize(recorrido, mantenimiento)
		@recorrido, @mantenimiento = recorrido, mantenimiento
		add_observer(Notificador.new)
	end
	
	def registrar (km)
		@recorrido += km
		changed
		notify_observers(self, @recorrido)
	end
end

auto1 = Auto.new(2500, 3000)
auto1.registrar(100)
auto1.registrar(300)
auto1.registrar(200)

puts auto1.recorrido

