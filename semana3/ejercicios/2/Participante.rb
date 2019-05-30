require "./Evaluacion"
class Participante
	attr_accessor :codigo, :nombre, :categoria
	def initialize(codigo, nombre)
		@codigo = codigo
		@nombre = nombre
		@categoria = ""

		@razonamiento1 = Evaluacion.new("RAZ")
		@conocimiento1 = Evaluacion.new("CON")
		@blandas1 = Evaluacion.new("BLA")
		@exp1 = Evaluacion.new("EXP")

		@razonamiento2 = Evaluacion.new("RAZ")
		@conocimiento2 = Evaluacion.new("CON")
		@blandas2 = Evaluacion.new("BLA")
		@exp2 = Evaluacion.new("EXP")
	end

	def setPuntajes1(raz, con, bla, exp)
		@razonamiento1.setPuntaje(raz)
		@conocimiento1.setPuntaje(con)
		@blandas1.setPuntaje(bla)
		@exp1.setPuntaje(exp)
	end

	def setPuntajes2(raz, con, bla, exp)
		@razonamiento2.setPuntaje(raz)
		@conocimiento2.setPuntaje(con)
		@blandas2.setPuntaje(bla)
		@exp2.setPuntaje(exp)
	end

	def getPromedioPuntaje1()
		return (@razonamiento1.puntaje * 0.15) + (@conocimiento1.puntaje * 0.2) + (@blandas1.puntaje * 0.25) + (@exp1.puntaje * 0.4)
	end

	def getPromedioPuntaje2()
		return (@razonamiento2.puntaje * 0.15) + (@conocimiento2.puntaje * 0.2) + (@blandas2.puntaje * 0.25) + (@exp2.puntaje * 0.4)
	end

	def getPromedioTotal()
		return (getPromedioPuntaje1() + getPromedioPuntaje2()) / 2.0
	end

	def setCategoria()

		prom = getPromedioTotal()

		if (prom >= 18)
			@categoria = "A"
		elsif (prom >= 17)
			@categoria = "B"
		else
			@categoria = "C"
		end
	end
end

par1 = Participante.new("001", "Luchito")
par1.setPuntajes1(20,18,17,19)
par1.setPuntajes2(13,12,18,20)
par1.setCategoria()

puts "El alumno #{par1.nombre} (#{par1.codigo})"
puts "Tiene de primer promedio: #{par1.getPromedioPuntaje1()}"
puts "Tiene de segundo promedio: #{par1.getPromedioPuntaje2()}"
puts "Promedio total: #{par1.getPromedioTotal()}"
puts "Y está en la categoria #{par1.categoria}"