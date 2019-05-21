class ArraysPersonas
  def initialize ()
    @menoresEdad = []
    @mayoresEdad = []
  end

  def agregarPersona(nombre: '', edad: 0)
    if (edad < 18)
      @menoresEdad.push({nombre: nombre, edad: edad})
    elsif (edad >= 18)
      @mayoresEdad.push({nombre: nombre, edad: edad})
    end
  end
  
  def menu ()
    system('cls')
    puts 'Seleccione un opción'
    puts '1. Agregar personas'
    puts '2. Listar personas'
    puts '3. Salir'
  
    opcion = gets.chomp
  
    case opcion
    when '1'
      return menuAgregarPersona()
    when '2'
      return menuListarPersona()
    when '3'
      return 0
    else
      return menu()
    end
  
  end
  
  def menuAgregarPersona()
    system('cls')
    print 'Ingrese nombre: '
    nombre = gets.chomp
    print 'Ingrese edad: '
    edad = gets.chomp.to_i
  
    agregarPersona(nombre: nombre, edad: edad)
  
    print 'Desea agregar otra personas? (S/n)'
    opcion = gets.chomp
  
    if (opcion.upcase == 'S')
      return menuAgregarPersona()
    else
      return menu()
    end
  end
  
  def menuListarPersona()
    puts 'Seleccionar opción:'
    puts '1. Listar mayores de edad'
    puts '2. Listar menores de edad'
    puts '3. Regresar al menú anterior'
  
    opcion = gets.chomp
  
    case opcion
      when '1'
        listarMayores()
        return menuListarPersona()
      when '2'
        listarMenores()
        return menuListarPersona()
      when '3'
        return menu()
      else
        return menuAgregarPersona()
    end
  end
  
  def listarMenores()
    puts "Nombre\t\t\tEdad"
    for i in 0..@menoresEdad.size - 1
      m = @menoresEdad[i]
      puts "#{m[:nombre]}\t\t#{m[:edad]}"
    end
    puts "########################"
  end
  
  def listarMayores()
    puts "Nombre\t\t\tEdad"
    for i in 0..@mayoresEdad.size - 1
      m = @mayoresEdad[i]
      puts "#{m[:nombre]}\t\t#{m[:edad]}"
    end
    puts "########################"
  end
end

personas = ArraysPersonas.new() 
personas.menu()
