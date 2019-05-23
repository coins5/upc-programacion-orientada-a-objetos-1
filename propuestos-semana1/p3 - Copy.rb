def mesMayorVenta(meses, ventas)
  venta_mayor = ventas[0]
  mes_mayor = meses[0]

  for i in 0..ventas.size - 1 
    if (ventas[i] > venta_mayor)
      venta_mayor = ventas[i]
      mes_mayor = meses[i]
    end
  end

  puts "La mayor venta la tiene #{mes_mayor} con #{venta_mayor}"
end

def mesMenorVenta(meses, ventas)
  venta_menor = ventas[0]
  mes_menor = meses[0]

  for i in 0..ventas.size - 1 
    if (ventas[i] < venta_menor)
      venta_menor = ventas[i]
      mes_menor = meses[i]
    end
  end

  puts "La menor venta la tiene #{mes_menor} con #{venta_menor}"
end

def promedioVentas(ventas)
  suma = 0
  for i in 0..ventas.size - 1
    suma += ventas[i]
  end
  return suma/ventas.size
end

def mesesVendenMayorAlPromedio(meses, ventas)
  promedio = promedioVentas(ventas)
  puts "Calculando meses con ventas mayores al promedio: "
  
  for i in 0..ventas.size - 1
    if (ventas[i] > promedio)
      puts "\t #{meses[i]} con #{ventas[i]}"
    end
  end
end

nombre_meses = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio"]
ventas_primeros_meses = [10, 30, 80, 20, 40, 50]

mesMayorVenta(nombre_meses, ventas_primeros_meses)
mesMenorVenta(nombre_meses, ventas_primeros_meses)
puts "El promedio de ventas de todos los meses es #{promedioVentas(ventas_primeros_meses)}"
mesesVendenMayorAlPromedio(nombre_meses, ventas_primeros_meses)
