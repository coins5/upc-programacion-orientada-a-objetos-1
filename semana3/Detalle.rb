class Detalle
	attr_accessor :descripcion, :cantidad, :punitario, :ptotal
	def initialize (descripcion, cantidad, punitario)
		@descripcion = descripcion
		@cantidad = cantidad
		@punitario = punitario
		@ptotal = calcularTotal()
	end

private
	def calcularTotal()
		return @punitario * @cantidad
	end
end

#d1 = Detalle.new("asdasd", 5, 2)
#puts d1.ptotal
