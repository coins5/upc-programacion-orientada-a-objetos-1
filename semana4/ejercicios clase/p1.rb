class Persona
	attr_accessor :nombre, :sexo, :edad
	def initialize (nombre, sexo, edad)
		@nombre, @sexo, @edad = nombre, sexo, edad
	end

	def mostrar ()
		puts "Persona: #{@nombre} #{@edad} #{@sexo}"
	end
end

class Alumno < Persona
	attr_reader :codigo
	def initialize (nombre, sexo, edad, codigo)
		super(nombre, sexo, edad)
		@codigo = codigo
	end

	
end

persona1 = Persona.new("Carlos", 25, "M")
#persona1.mostrar()

alumno1 = Alumno.new("Ana", 20, "F", "0001")
puts alumno1.nombre
puts alumno1.sexo
puts alumno1.edad
puts alumno1.codigo
