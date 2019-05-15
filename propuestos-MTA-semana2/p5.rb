class CalculadorDescuentos
  def initialize(tipoCliente: 'oro')
    @descuento = 0.0
    @montoMinimo = 0.0
    case tipoCliente
      when 'oro'
        @descuento = 0.2
        @montoMinimo = 1000
      when 'plata'
        @descuento = 0.1
        @montoMinimo = 1200
    end

    def comprar(monto: 0)
      puts "-----------------------"
      puts "Monto de compra: #{monto}"
      montoDescuento = 0
      if ( @descuento > 0 && monto >= @montoMinimo )
        montoDescuento = @descuento * monto
        puts "Se aplica un descuento de #{montoDescuento} soles (#{@descuento * 100}%)"
      end
      total = monto - montoDescuento
      puts "Total a cobrar #{total}"
      puts "-----------------------"
    end
  end
end

calc1 = CalculadorDescuentos.new(tipoCliente: 'oro')
calc2 = CalculadorDescuentos.new(tipoCliente: 'plata')
calc3 = CalculadorDescuentos.new(tipoCliente: 'normal')

calc1.comprar(monto: 1500)
calc2.comprar(monto: 1100)
calc3.comprar(monto: 900)
