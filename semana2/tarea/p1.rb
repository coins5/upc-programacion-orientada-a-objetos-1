class Cuenta
  def initialize(nombre: '', dni: '', saldo: '')
    @nombre = nombre
    @dni = dni
    @saldo = saldo
  end

  def deposito (monto)
    @saldo += monto
    return @saldo
  end

  def retiro (monto)
    if (monto > @saldo)
      return false
    end
    @saldo -= monto
    return true
  end

  def reporte()
     puts "El cliente #{@nombre}(#{@dni}) tiene de saldo #{@saldo}"
  end
end

cuenta1 = Cuenta.new(nombre:"Juan Perez", dni:"12345671", saldo: 1500)
cuenta2 = Cuenta.new(nombre:"Ana Castro", dni:"12345672", saldo: 100)


puts cuenta1.retiro(200)
puts cuenta1.deposito(100)
puts cuenta1.retiro(500)
puts cuenta2.retiro(100) 
puts cuenta2.retiro(800)
puts cuenta2.deposito(700)
puts cuenta2.retiro(600)



