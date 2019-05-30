require "./Cuenta"
class Cliente
	attr_accessor :nombre, :cuenta
	def initialize ()
		@nombre = "Juan"
		@cuenta = Cuenta.new
	end
end

c = Cliente.new
puts c.cuenta.monto