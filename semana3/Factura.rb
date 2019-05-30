require "./Detalle"
class Factura
	attr_accessor :ruc, :razon, :fecha, :listaDetalles
	def initialize(ruc, razon, fecha)
		@ruc = ruc
		@razon = razon
		@fecha = fecha
		@listaDetalles = []
	end

	def agregarDetalle(descripcion, cantidad, punitario)
		@listaDetalles.push(Detalle.new(descripcion, cantidad, punitario))
	end
	def reporte()
		total = 0
		puts "FACTURA"
		puts "RUC:            #{@ruc}"
		puts "RAZON SOCIAL:   #{@razon}"
		puts "Fecha           #{@fecha}"
		puts ""
		print "DESCRIPCION".ljust(20)
		print "CANTIDAD".ljust(20)
		print "P. UINITAROP".ljust(20)
		print "P. TOTAL\n"
		@listaDetalles.each do |item|
			total += item.ptotal
			print item.descripcion.ljust(20)
			print item.cantidad.to_s.ljust(20)
			print item.punitario.to_s.ljust(20)
			print item.ptotal.to_s.ljust(20)
			print "\n"
		end
		puts
		puts "TOTAL: #{total}"
		puts "IGV: #{total * 0.18}"
		puts "TOTAL A PAGAR: #{total * 1.18}"
	end

end

f1 = Factura.new('12345678', 'AAAAA', "1900-01-01")
f1.agregarDetalle("Desc1", 5, 8)
f1.agregarDetalle("Desc2", 6, 9)
f1.agregarDetalle("Desc3", 4, 2)

f1.reporte()
