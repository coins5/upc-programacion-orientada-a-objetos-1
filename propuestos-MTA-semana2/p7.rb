class CambiadorBilletes
  def initialize
    @billetes = [100, 50, 20]
  end
  def cambiar(montoSoles: 0)
    monto = montoSoles / 3.12
    resto = monto
    
    dispensar = []
    
    for i in 0..@billetes.size - 1
      dispensar.push(resto.round(0) / @billetes[i])
      resto = resto % @billetes[i]
    end

    print "Se dispensarán: "
    for i in 0..@billetes.size - 1
      print "#{dispensar[i]} de #{@billetes[i]} | "
    end
    #puts ""

    # billetes1 = resto.round(0) / 100
    # resto = resto % 100

    # billetes2 = resto.round(0) / 50
    # resto = resto % 50
    
    # billetes3 = resto.round(0) / 20
    # resto = resto % 20

    # puts "Se requieren #{billetes1} de 100 | #{billetes2} de 50 | #{billetes3} de 20"
  end
end

c1 = CambiadorBilletes.new()

# 1000 -> 320.51282051282051282051282051282‬ | 3 de 100, 0 de 50 y 1 de 20
c1.cambiar(montoSoles: 1000)

