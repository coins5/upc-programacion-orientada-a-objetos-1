class Program
  def initialize (nombre: '', escrito: 0, oral: 0)
    @nombre = nombre
    @escrito = escrito
    @oral = oral
  end

  def calcularNivel ()
    if (@escrito > 95 && @oral > 75)
      return 3
    elsif (@escrito > 95  && @oral <= 75)
      return 2
    elsif (@escrito <= 95)
      return 1
    end
  end

  def precioCobrar ()
    case calcularNivel()
      when 1 then return 150
      when 2 then return 250
      when 3 then return 400
    end
  end
end

alumno1 = Program.new(nombre: 'Jose Chavez', escrito: 100, oral: 80)
alumno2 = Program.new(nombre: 'María Bautista', escrito: 95, oral: 75)
alumno3 = Program.new(nombre: 'Pedro Marin', escrito: 50, oral: 85)
alumno4 = Program.new(nombre: 'Juan Otiniano', escrito: 96, oral: 50)
alumno5 = Program.new(nombre: 'Fabiana Cruz', escrito: 100, oral: 75)

puts alumno1.calcularNivel()
puts alumno1.precioCobrar()
puts alumno2.calcularNivel()
puts alumno2.precioCobrar()
puts alumno3.calcularNivel()
puts alumno3.precioCobrar()
puts alumno4.calcularNivel()
puts alumno4.precioCobrar()
puts alumno5.calcularNivel()
puts alumno5.precioCobrar()
