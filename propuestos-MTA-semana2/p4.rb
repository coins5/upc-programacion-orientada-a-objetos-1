class Presupuesto
  def initialize(nombre: '', total: 0)
    puts "#{nombre}, el presupuesto calculado es: #{total}"
  end
end

p1 = Presupuesto.new(nombre: 'Carlos Perez', total: 12.058)