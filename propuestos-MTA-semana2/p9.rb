
class Auto
  def initialize (marca: '', precio: 0)
    @marca = marca
    @precio = precio
  end
  def calcular_neto (numero)
    return (@precio * numero * 1.18).round(2)
  end
end

auto = Auto.new(marca: 'Volvo', precio: 19000)
neto = auto.calcular_neto(2)
puts "Neto: #{neto}"

class Triangulo
  def initialize(ladoA: 0, ladoB: 0, ladoC: 0)
    @ladoA = ladoA
    @ladoB = ladoB
    @ladoC = ladoC
    @perimetro = (ladoA + ladoB + ladoC) / 2
  end

  def calcularArea()
    ab = @perimetro - @ladoC
    ac = @perimetro - @ladoB
    bc = @perimetro - @ladoA
    return (@perimetro * ab * ac * bc) ** 0.5
  end
end

t1 = Triangulo.new(ladoA: 3, ladoB: 4, ladoC: 5)
puts "El área del triángulo es #{t1.calcularArea()} u2"

