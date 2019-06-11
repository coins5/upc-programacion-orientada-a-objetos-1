class Bus
	attr_reader :placa, :numeroPasajeros, :asientos 
	def initialize(placa, numeroPasajeros)
		@placa, @numeroPasajeros = placa, numeroPasajeros
		@asientos = Array.new(numeroPasajeros.size) { |i| "Asiento #{i+1}"}
	end
end
