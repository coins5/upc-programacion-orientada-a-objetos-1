class Trabajador < Solicitante
	def initialize(tipoDocumento, numeroDocumento, nombre, apellido, edad, ingreso, tieneContrato)
		super(tipoDocumento, numeroDocumento, nombre, apellido, edad, ingreso)
		@tipoSolicitante = 'A'
		@tieneContrato = tieneContrato
		@puntaje = obtenerPuntaje()
		@estado = @puntaje >= 60 ? 'Aprobada' : 'Rechazada'
	end

private 
	def obtenerPuntaje ()
		puntajeBase = super()
		if (@tieneContrato == 'SI') 
			puntajeBase += 15
		end
		return puntajeBase
	end
end