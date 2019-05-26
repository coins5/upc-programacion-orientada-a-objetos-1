class Program
  def initialize(dni: '', nombre: '', cargo: '', sueldoBruto: 0, horasExtras: 0, pension: '')
    @dni = dni
    @nombre = nombre
    @cargo = cargo

    @sueldoBruto = sueldoBruto
    @horasExtras = horasExtras
    @pension = pension
  end

  def aporte ()
    return @sueldoBruto * (@pension == 'ONP' ? 0.13 : 0.12)
  end

  def bono ()
    result = 0
    case (@cargo)
      when 'Jefe' then result = @sueldoBruto * 0.1
      when 'Coordinador' then result  = @sueldoBruto * 0.05
      when 'Operario' then result = @sueldoBruto * 0.02
    end
    return result
  end

  def impuesto ()
    return @sueldoBruto * 0.18
  end

  def extra ()
    return @horasExtras * 50
  end

  def remuneracion ()
    return @sueldoBruto - aporte() + bono() - impuesto() + extra()
  end
end


empleado1 = Program.new(dni: '12345671', nombre: 'Carlos Santos', cargo: 'Jefe', sueldoBruto: 8000, horasExtras: 10, pension: 'AFP')
empleado2 = Program.new(dni: '12345672', nombre: 'Ana Perez', cargo: 'Jefe', sueldoBruto: 7500, horasExtras: 18, pension: 'ONP')
empleado3 = Program.new(dni: '12345673', nombre: 'Karen Zavaleta', cargo: 'Coordinador', sueldoBruto: 6000, horasExtras: 20, pension: 'ONP')
empleado4 = Program.new(dni: '12345674', nombre: 'Jose Rodriguez', cargo: 'Operario', sueldoBruto: 4000, horasExtras: 15, pension: 'ONP')

puts empleado1.aporte()
puts empleado1.bono()
puts empleado1.impuesto()
puts empleado1.extra()
puts empleado2.aporte()
puts empleado2.bono()
puts empleado2.impuesto()
puts empleado2.extra()
puts empleado3.aporte()
puts empleado3.bono()
puts empleado3.impuesto()
puts empleado3.extra()
puts empleado4.aporte()
puts empleado4.bono()
puts empleado4.impuesto()
puts empleado4.extra()
