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
      puts 'TIPO DE TRABAJADOR NO VALIDO'
  end

  puts "El trabajador #{nombre} #{apellido} recibe un bono de #{bono} soles. Sueldo: #{sueldo_base + bono} soles"
end

calculaBono(
  dni: '12345678', nombre: 'Pepito', apellido: 'apel1',
  sueldo_base: 200, tipo_trabajador: 'Planilla'
)

calculaBono(
  dni: '12345678', nombre: 'Luchito', apellido: 'apel2',
  sueldo_base: 200, tipo_trabajador: 'Por Horas'
)

calculaBono(
  dni: '12345678', nombre: 'Pepita', apellido: 'apel3',
  sueldo_base: 200, tipo_trabajador: 'Parcial'
)

calculaBono(
  dni: '12345678', nombre: 'Luchita', apellido: 'apel4',
  sueldo_base: 200, tipo_trabajador: 'Otro tipo'
)