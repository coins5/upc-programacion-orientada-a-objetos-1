class Caballo
  attr_reader :nombre
  def initialize(nombre: '', raza: '', color: '', velocidad: '')
    @nombre = nombre
    @raza = raza 
    @color = color
    @velocidad = velocidad
  end

  def mostrar()
    puts "nombre: #{@nombre} | velocidad: #{@velocidad}"
  end

  def aumentarVelocidad(v)
    @velocidad += v
  end
end

caballo1 = Caballo.new(nombre: 'Caballo 1', raza: 'Raza 1', color: 'Color 1', velocidad: 0)
caballo1.mostrar()
caballo1.aumentarVelocidad(20)
caballo1.mostrar()
caballo1.aumentarVelocidad(30)
caballo1.mostrar()
