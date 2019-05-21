class ListaPersonas
  def initialize ()
    @personas = []
    @ultimoNodo = nil
  end

  def agregarPersona(nombre: '', edad: 0)
    if (@ultimoNodo == nil)
      @ultimoNodo = [{nombre: nombre, edad: edad}, nil]
      @personas = @ultimoNodo
    else
      @ultimoNodo[1] = [{nombre: nombre, edad: edad}, nil]
      @ultimoNodo = @ultimoNodo[1]
    end
  end

  def imprimirNodo (nodo) 
    puts "#{nodo[:nombre]}\t\t#{nodo[:edad]}"
  end
  
  def filtrarPorEdad(mayorDeEdad: true)

    puts "Nombre\t\tEdad"
    nodo = @personas[0]
    if (mayorDeEdad == true && nodo[:edad] >= 18)
      imprimirNodo(nodo)
    elsif (mayorDeEdad == false && nodo[:edad] < 18)
      imprimirNodo(nodo)
    end
    
    siguienteNodo = @personas[1]

    while (siguienteNodo != nil)
      nodo = siguienteNodo[0]
      if (mayorDeEdad == true && nodo[:edad] >= 18)
        imprimirNodo(nodo)
      elsif (mayorDeEdad == false && nodo[:edad] < 18)
        imprimirNodo(nodo)
      end
      siguienteNodo = siguienteNodo[1]
    end
    puts "########################"
  end

  def printPersonas()
    print @personas
    puts ""
    puts ""

  end
end

# personas = ListaPersonas.new()
# personas.agregarPersona(nombre: 'test1', edad: 14)
# personas.agregarPersona(nombre: 'test2', edad: 21)
# personas.agregarPersona(nombre: 'test3', edad: 16)
# personas.agregarPersona(nombre: 'test4', edad: 18)
# #personas.agregarPersona(nombre: 'test5', edad: 18)

# personas.printPersonas()
# personas.filtrarPorEdad(mayorDeEdad: false)


class Program
  def initialize ()
    @listaPersonas = ListaPersonas.new()
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
  
    @listaPersonas.agregarPersona(nombre: nombre, edad: edad)
  
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
        system("cls")
        @listaPersonas.filtrarPorEdad(mayorDeEdad: true)
        return menuListarPersona()
      when '2'
        system("cls")
        @listaPersonas.filtrarPorEdad(mayorDeEdad: false)
        return menuListarPersona()
      when '3'
        return menu()
      else
        return menuAgregarPersona()
    end
  end
end

program = Program.new() 
program.menu()
