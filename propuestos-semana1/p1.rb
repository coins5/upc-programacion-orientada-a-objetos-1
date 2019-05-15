class Alumno
  def initialize(codigo: '0', nombre: 'DEFAULT')
    @codigo = codigo
    @nombre = nombre
    @T1 = 0
    @T2 = 0
  end

  def setNotas(t1: 0, t2: 0)
    @T1 = t1
    @T2 = t2
  end

  def checkNotas
    if (@T1 >= 85 && @T2 >= 85)
      puts "El alumno #{@codigo}-#{@nombre} Está aprobado" 
    elsif (@T1 <85 && @T2 < 85)
      puts "El alumno #{@codigo}-#{@nombre} ha desaprobado"
    else
      puts "El alumno #{@codigo}-#{@nombre} Está en observación"
    end
  end
end

al1 = Alumno.new(codigo: '001', nombre: 'AL1')
al2 = Alumno.new(codigo: '001', nombre: 'AL2')
al3 = Alumno.new(codigo: '001', nombre: 'AL3')

al1.setNotas(t1: 86, t2: 86)
al2.setNotas(t1: 84, t2: 86)
al3.setNotas(t1: 84, t2: 84)

al1.checkNotas
al2.checkNotas
al3.checkNotas
