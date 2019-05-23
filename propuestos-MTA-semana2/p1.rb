class Alumno
  attr_accessor :codigo
  attr_accessor :nombre
  attr_accessor :apellido

  attr_accessor :pc1
  attr_accessor :pc2
  attr_accessor :pc3
  attr_accessor :parcial
  attr_accessor :final

  def initialize (codigo: '', nombre: '', apellido: '')
    @codigo = codigo
    @nombre = nombre
    @apellido = apellido

    @pc1 = 0
    @pc2 = 0
    @pc3 = 0
    @parcial = 0
    @final = 0
  end

  def setNotas(pc1: 0, pc2: 0, pc3: 0, parcial: 0, final: 0)
    @pc1 = pc1
    @pc2 = pc2
    @pc3 = pc3
    @parcial = parcial
    @final = final
  end

  def calcularPromedioFinal
    # PF = Promedio prácticas * 0.2 + Parcial * 0.3 + Final * 0.5
    promedioPC = (@pc1 + @pc2 + @pc3) / 3.0
    return (promedioPC * 0.2) + (@parcial * 0.3) + (@final * 0.5)
  end
end

al1 = Alumno.new(codigo: '001', nombre: 'Luchito', apellido: 'Apel1')
al2 = Alumno.new(codigo: '002', nombre: 'Pepito', apellido: 'Apel2')
al3 = Alumno.new(codigo: '003', nombre: 'Luchita', apellido: 'Apel3')

al1.setNotas(pc1: 0, pc2: 14, pc3: 13, parcial: 15, final: 12)
al2.setNotas(pc1: 11, pc2: 15, pc3: 17, parcial: 13, final: 17)
al3.setNotas(pc1: 16, pc2: 18, pc3: 19, parcial: 18, final: 20)

puts "El alumno #{al1.nombre} #{al1.apellido} tiene como promedio final: #{al1.calcularPromedioFinal().round(2)}"
puts "El alumno #{al2.nombre} #{al2.apellido} tiene como promedio final: #{al2.calcularPromedioFinal().round(2)}"
puts "El alumno #{al3.nombre} #{al3.apellido} tiene como promedio final: #{al3.calcularPromedioFinal().round(2)}"
