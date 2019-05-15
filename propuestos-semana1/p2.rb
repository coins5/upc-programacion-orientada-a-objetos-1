class SimuladorDados
  def lanzarDados()
    dado1 = rand(1..6)
    dado2 = rand(1..6)
    suma = dado1 + dado2
    print "Dado 1: #{dado1} | Dado 2: #{dado2} | SUMA: #{suma} | "
    if (suma == 7 || suma == 11)
      puts "PIERDE"
    elsif (suma == 2 || suma == 12)
      puts "GANA"
    else
      puts "INDEFINIDO"      
    end
  end
end
simulador = SimuladorDados.new
simulador.lanzarDados