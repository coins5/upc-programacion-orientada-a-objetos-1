#require "./Cursos"
require "./Curso"

class Alumno
	attr_accessor :codigo, :nombre, :edad
	def initialize(codigo, nombre, edad)
		@codigo = codigo
		@nombre = nombre
		@edad = edad
		@cursos = []

		@costoMatricula = 0
	end

	def agregarCurso(curso)
		@costoMatricula += curso.creditos * 100
		@cursos.push(curso)
	end

	def reporte ()
		puts "Datos del alumno"
		puts "Nombre: #{@nombre}"
		puts "Codigo: #{@codigo}"
		puts "Edad: #{@edad}"
		puts
		@cursos.each do |c| 
			puts "#{c.nombre} (#{c.codigo}) - Creditos: #{c.creditos}"
		end
		puts
		puts "Costo total: #{@costoMatricula}"
		puts
	end
end

a1 = Alumno.new("c1", "al1", 17)
a1.agregarCurso(Curso.new("IS1", "CURSO 1", 5))
a1.agregarCurso(Curso.new("IS2", "CURSO 2", 3))
a1.agregarCurso(Curso.new("IS3", "CURSO 3", 1))
a1.agregarCurso(Curso.new("IS4", "CURSO 4", 1))

a1.reporte()