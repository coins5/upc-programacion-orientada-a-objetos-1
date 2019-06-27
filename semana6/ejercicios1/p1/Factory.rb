class Factory
	def self.crearDisco (tipo, *param)
		if (tipo == "C")
			Cd.new(param[0], param[1], param[2], param[3], param[4])
		elsif tipo == "D"
			Dvd.new(param[0], param[1], param[2])
		elsif tipo == "B"
			Blueray.new(param[0], param[1], param[2], param[3])
		end
	end

	def self.crearUsuario (dni, nombre)
		Usuario.new(dni, nombre)
	end
end
