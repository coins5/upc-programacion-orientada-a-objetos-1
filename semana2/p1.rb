arreglo_personas = []
def agregarPersona(arreglo, nombre, edad)
  arreglo.push([nombre, edad])
end

def reporte(arreglo)
  arreglo.sort_by!{|f| f[0]}
  arreglo.each do |item| 
    puts "#{item[0]} tiene #{item[1]} años"
  end
end

def menuAgregarPersona(arreglo)
  puts "Agregar persona"
  print "Nombre: "
  nombre = gets.chomp
  print "Edad: "
  edad = gets.chomp.to_i

  agregarPersona(arreglo, nombre, edad)

  puts "Desea agregar otro? [s/n]"
  opcion = gets.chomp.to_s

  if (opcion.upcase == "S")
    system("cls")
    menuAgregarPersona(arreglo)
  else
    puts "Ordenando y listando ..."
    reporte(arreglo)
  end
end

menuAgregarPersona(arreglo_personas)
