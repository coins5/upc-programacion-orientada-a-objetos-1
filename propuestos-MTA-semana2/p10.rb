# Se quiere conocer el descuento de tardanzas por minuto
# El cálculo de las tardanzas se hace de la siguiente forma:
#   (sueldoBase / (24 * 8 * 60)) * minutosTardanza

class Program
  attr_accessor :nombre
  def initialize (nombre, sueldoBase)
    @nombre = nombre
    @sueldoBase = sueldoBase
  end

  def calcularTardanza (minutosTardanza)
    return minutosTardanza * @sueldoBase / (24 * 8 * 60.0)
  end
end

program1 = Program.new("Pepito", 1200)
program2 = Program.new("Luchita", 3000)

dscto1 = program1.calcularTardanza(5).round(2)
dscto2 = program2.calcularTardanza(180).round(2)

puts "El descuento de #{program1.nombre} es #{dscto1}"
puts "El descuento de #{program2.nombre} es #{dscto2}"
