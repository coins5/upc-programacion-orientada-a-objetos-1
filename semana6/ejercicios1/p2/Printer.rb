require 'singleton'
class Printer
	include Singleton
	def imprimirAlumnos (alumnos)
		imprimirCabecera()
		alumnos.each { |a| imprimirFila(a) }
	end 

	def imprimirAlumno (alumno)
		imprimirCabecera()
		imprimirFila(alumno)
	end

private
	def imprimirCabecera ()
		separador = 15
		print "CODIGO".ljust(separador)
		print "nombre".ljust(separador)
		print "APELLIDO".ljust(separador)
		puts
		print "-" * 3 * separador
		puts
	end

	def imprimirFila (alumno)
		separador = 15
		print alumno.codigo.ljust(separador)
		print alumno.nombre.ljust(separador)
		print alumno.apellido.ljust(separador)
		puts
	end
end