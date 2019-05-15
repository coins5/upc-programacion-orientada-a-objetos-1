class Celular
  attr_accessor :numero
  attr_accessor :codigoCiudad
  attr_accessor :saldo

  def initialize(numero: '', codigoCiudad: '', saldo: 0)
    @numero = numero
    @codigoCiudad = codigoCiudad
    @saldo = saldo
  end

  def recargar(monto: 0)
    print "Saldo inicial #{@saldo} -> "
    @saldo += monto
    puts "Nuevo saldo: #{@saldo}"
  end
end

class Persona
  attr_accessor :nombre
  attr_accessor :direccion
  attr_accessor :dni
  attr_accessor :celulares

  def initialize(nombre: '', direccion: '', dni: '')
    @nombre = nombre
    @direccion = direccion
    @dni = dni
    
    @celulares = []
  end

  def comprarCelular(celular)
    @celulares.push(celular)
  end

  def recargarSaldo(numeroCelular: '', monto: 0)
    for i in 0..celulares.size - 1
      cel = celulares[i]
      if (cel.numero == numeroCelular)
        puts "Numero de celular encontrado"
        puts "Nombre: #{@nombre} | direccion: #{@direccion} | dni: #{dni}"
        cel.recargar(monto: monto)
        return
      end
    end
  end
end

p1 = Persona.new(nombre: 'Pepito', direccion: 'Calle los luchitos 666', dni: '12345678')
p1.comprarCelular(Celular.new(numero: '987654321', codigoCiudad: '1', saldo: 0))
p1.comprarCelular(Celular.new(numero: '963852741', codigoCiudad: '1', saldo: 0))

p1.recargarSaldo(numeroCelular: '987654321', monto: 20)

