class Program  
  def calculaBono (dni: '', nombre: '', apellido: '', sueldo_base: 0, tipo_trabajador: '')
    bono = 0
    case tipo_trabajador
      when 'Planilla'
        bono = 300
      when 'Por Horas'
        bono = 400
      when 'Parcial'
        bono = 500
      else
        puts "#{dni} - TIPO DE TRABAJADOR NO VALIDO"
    end

    puts "El trabajador #{nombre} #{apellido} recibe un bono de #{bono} soles. Sueldo base: #{sueldo_base} . Sueldo total: #{sueldo_base + bono} soles"
  end
end

program = Program.new()

program.calculaBono(
  dni: '12345678', nombre: 'Pepito', apellido: 'apel1',
  sueldo_base: 200, tipo_trabajador: 'Planilla'
)

program.calculaBono(
  dni: '12345678', nombre: 'Luchito', apellido: 'apel2',
  sueldo_base: 200, tipo_trabajador: 'Por Horas'
)

program.calculaBono(
  dni: '12345678', nombre: 'Pepita', apellido: 'apel3',
  sueldo_base: 200, tipo_trabajador: 'Parcial'
)

program.calculaBono(
  dni: '66666666', nombre: 'Luchita', apellido: 'apel4',
  sueldo_base: 200, tipo_trabajador: 'Otro tipo'
)