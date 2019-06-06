class FormaGeometrica
	def initialize (ancho, alto) 
		@ancho, @alto = ancho, alto
	end

	def area () 
		return @ancho * @alto
	end
end

class Triangulo < FormaGeometrica
	def area
		return super() / 2.0
	end
end

class Cuadrado < FormaGeometrica
	def area
		return super()
	end
end

class Circulo < FormaGeometrica
	def area
		return ( Math::PI * super() / 4.0).round(2)
	end 
end

t = Triangulo.new(5,4)
puts t.area()

cu = Cuadrado.new(5,4)
puts cu.area()

ci = Circulo.new(5,4)
puts ci.area()