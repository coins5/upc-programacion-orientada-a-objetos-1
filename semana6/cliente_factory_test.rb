require './factory_test'
require './factory'

class Cliente
	attr_reader :nombre, :mascotas 
	def initialize (nombre)
		@nombre, @mascotas = nombre, []
	end
	def agregar_mascota (tipo, nombre)
		@mascotas.push(MascotaFactory.crear(tipo, nombre))
	end
end

cliente = Cliente.new("Juan")
cliente.agregar_mascota("perro", "Fido")
cliente.agregar_mascota("gato", "Michi")
cliente.mascotas.each { |item| puts item.nombre }
