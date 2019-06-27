class MascotaFactory
	def self.crear (tipo, nombre)
		case tipo
			when "perro" then Perro.new(nombre)
			when "gato" then Gato.new(nombre)
		end
	end
end