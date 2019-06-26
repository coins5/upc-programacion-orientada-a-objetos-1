class Residente < Solicitante
	def initialize(tipoDocumento, numeroDocumento, nombre, apellido, edad, ingreso, hablaIngles)
		super(tipoDocumento, numeroDocumento, nombre, apellido, edad, ingreso)
		@tipoSolicitante = 'R'
		@hablaIngles = hablaIngles
		@puntaje = obtenerPuntaje()
		@estado = @puntaje >= 60 ? 'Aprobada' : 'Rechazada'
	end

private 
	def obtenerPuntaje ()
		puntajeBase = super()
		if (@hablaIngles == 'SI') 
			puntajeBase += 20
		end
		return puntajeBase
	end
end