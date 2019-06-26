# solicitantes en general deben indicar su tipo de documento 
#(DNI, pasaporte, otro), el número de documento, nombre y apellido,
# edad e ingreso mensual neto (en dólares).
# Los solicitantes se clasifican en turistas, trabajadores y residentes.
class Solicitante
	attr_accessor :tipoDocumento, :numeroDocumento, :nombre, :apellido, :edad, :ingreso, :tipoSolicitante, :puntaje, :estado
	def initialize(tipoDocumento, numeroDocumento, nombre, apellido, edad, ingreso)
		@tipoDocumento, @numeroDocumento, @nombre, @apellido, @edad, @ingreso = tipoDocumento, numeroDocumento, nombre, apellido, edad, ingreso
	end

private 
	def obtenerPuntaje () 
		return (@ingreso / 100) + edad
	end
end