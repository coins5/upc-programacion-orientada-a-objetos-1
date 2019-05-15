class Perro
  attr_accessor :nombre
  attr_accessor :raza
  attr_accessor :tamano
  attr_accessor :estaVacunado

  def initialize(nombre: '', raza: '', tamano: '')
    @nombre = nombre
    @raza = raza
    @tamano = tamano # pequeño, mediano, grande

    @estaVacunado = false
  end
end

class Veterinaria
  def initialize()
    @costo_base_bano = 10
    @costo_base_vacuna = 20
  end

  def costoBano(perro)
    factorCoste = 1

    case perro.tamano
      when 'pequeño'
        factorCoste = 1
      when 'mediano'
        factorCoste = 1.2
      when 'grande'
        factorCoste = 1.5
    end

    return @costo_base_bano * factorCoste
  end

  def costoVacuna(perro)
    if (perro.estaVacunado)
      puts "El perro #{perro.nombre} ya está vacunado"
      return 0
    end
    puts "Se procede a vacunar al perro #{perro.nombre}"
    factorCoste = 1

    case perro.tamano
      when 'pequeño'
        factorCoste = 1.2
      when 'mediano'
        factorCoste = 1.8
      when 'grande'
        factorCoste = 2.0
    end

    perro.estaVacunado = true

    return @costo_base_vacuna * factorCoste
  end

  def banar(perro)
    puts "---------------"
    puts "Tamaño de perro: #{perro.tamano}"

    cb = costoBano(perro)
    cv = costoVacuna(perro)
    costoTotal = cb + cv

    puts "Costo base de baño: #{@costo_base_bano} -> Costo total considerando tamaño de perro #{cb}"
    puts "Costo base de vacuna: #{@costo_base_vacuna} -> Costo total considerando tamaño de perro #{cv}"
    puts "Costo Baño: #{cb} | Costo Vacuna: #{cv} |Costo total: #{costoTotal}"
    puts "---------------"
  end
end

vet = Veterinaria.new()
perro1 = Perro.new(nombre: 'Boby', raza: 'Golden retriever', tamano: 'mediano')
perro2 = Perro.new(nombre: 'Acero', raza: 'Rottweiler', tamano: 'grande')
perro3 = Perro.new(nombre: 'Luna', raza: 'Chihuahua Barcelona', tamano: 'pequeño')

vet.banar(perro1)
vet.banar(perro2)
vet.banar(perro3)
vet.banar(perro1)