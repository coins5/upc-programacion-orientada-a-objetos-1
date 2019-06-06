class Cliente
	attr_accessor :nombre, :dni, :factor, :visitasAcumuladas, :numeroAutos
	def initialize (nombre, dni)
		@nombre, @dni = nombre, dni
	end
end

class ClienteVIP < Cliente
	def initialize (nombre, dni, numeroAutos)
		super(nombre, dni)
		@numeroAutos = numeroAutos
		@factor = calcularFactor()
	end
private
	def calcularFactor ()
		#return (0.9 * (numeroAutos + 1) / numeroAutos).round(2)
		return  numeroAutos * 3
	end
end 

class ClienteFrecuente < Cliente
	def initialize (nombre, dni, visitasAcumuladas)
		super(nombre, dni)
		@visitasAcumuladas = visitasAcumuladas
		@factor = calcularFactor()
	end
private
	def calcularFactor ()
		# return (1.0 * visitasAcumuladas / (visitasAcumuladas + 1)).round(2)
		return visitasAcumuladas * 2
	end
end	

class ClienteRegular < Cliente
	def initialize (nombre, dni)
		super(nombre, dni)
		@factor = calcularFactor()
	end
private
	def calcularFactor ()
		# return (100 * 3 / 10.0).round(2)
		return 10
	end
end
