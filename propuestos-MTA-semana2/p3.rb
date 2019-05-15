class Boleta
  attr_accessor :monto

  def initialize(monto: 0)
    @monto = monto
  end

  def calcularIGV 
    return @monto * 0.18
  end

  def mostrarTotal
    return (@monto + calcularIGV()).round(2)
  end
end

bol1 = Boleta.new(monto: 52.37)
puts "El total a pagar es: #{bol1.mostrarTotal} (IGV: #{bol1.calcularIGV.round(2)})"