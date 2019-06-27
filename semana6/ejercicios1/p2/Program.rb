require './Alumno'
require './FactoryAlumno'
require './Printer'

class Program
	attr_reader :alumnos
	def initialize()
		@alumnos = []
	end
	def agregarAlumno (tipo, codigo, nombre, apellido)
		@alumnos.push(FactoryAlumno.crear(tipo, codigo, nombre, apellido))
	end
end

program = Program.new
program.agregarAlumno("traslado", "A001", "Alumno 1", "Apel 1")
program.agregarAlumno("traslado", "A002", "Alumno 2", "Apel 2")
program.agregarAlumno("traslado", "A003", "Alumno 3", "Apel 3")

printer = Printer.instance
printer.imprimirAlumnos(program.alumnos)

puts 
puts "Imprimiendo un solo alumno"
printer.imprimirAlumno(program.alumnos[0])