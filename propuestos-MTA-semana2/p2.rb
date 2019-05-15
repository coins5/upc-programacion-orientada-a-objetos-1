class Perro
  attr_accessor :nombre
  attr_accessor :numero
  attr_accessor :velocidad_base

  def initialize(nombre: '', numero: 0)
    @nombre = nombre,
    @numero = numero

    @velocidad_base = rand(1..10)
    self.presentar
  end

  def presentar
    puts "Nombre: #{@nombre} Número: #{@numero}"
  end

  def velocidad_carrera
    return @velocidad_base + rand(1..10)
  end
end

p1 = Perro.new(nombre: 'Perro 1', numero: 1)
p2 = Perro.new(nombre: 'Perro 2', numero: 2)
p3 = Perro.new(nombre: 'Perro 3', numero: 3)
p4 = Perro.new(nombre: 'Perro 4', numero: 4)
p5 = Perro.new(nombre: 'Perro 5', numero: 5)
p6 = Perro.new(nombre: 'Perro 6', numero: 6)
p7 = Perro.new(nombre: 'Perro 7', numero: 7)

puts ""
puts "INICIAR CARRERA"
puts ""

puts "Perro de la pista #{p1.numero} tiene una velocidad de #{p1.velocidad_carrera} (vel. Base: #{p1.velocidad_base})"
puts "Perro de la pista #{p2.numero} tiene una velocidad de #{p2.velocidad_carrera} (vel. Base: #{p2.velocidad_base})"
puts "Perro de la pista #{p3.numero} tiene una velocidad de #{p3.velocidad_carrera} (vel. Base: #{p3.velocidad_base})"
puts "Perro de la pista #{p4.numero} tiene una velocidad de #{p4.velocidad_carrera} (vel. Base: #{p4.velocidad_base})"
puts "Perro de la pista #{p5.numero} tiene una velocidad de #{p5.velocidad_carrera} (vel. Base: #{p5.velocidad_base})"
puts "Perro de la pista #{p6.numero} tiene una velocidad de #{p6.velocidad_carrera} (vel. Base: #{p6.velocidad_base})"
puts "Perro de la pista #{p7.numero} tiene una velocidad de #{p7.velocidad_carrera} (vel. Base: #{p7.velocidad_base})"

