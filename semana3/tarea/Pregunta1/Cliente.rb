class Cliente
	attr_reader :codigo, :nombre, :apellido, :puntos, :distrito, :categoria
	def initialize (codigo, nombre, apellido, puntos, distrito)
		@codigo = codigo
		@nombre = nombre
		@apellido = apellido
		@puntos = puntos
		@distrito = distrito

		@categoria = setCategoria(puntos)
	end

private
	def setCategoria(puntos)
		if (puntos < 450)
			return 'BÁSICO'
		elsif (puntos < 800)
			return 'MEDIANO'
		elsif (puntos < 1000)
			return 'SUPERIOR'
		else
			return 'VIP'
		end
	end
end