class Turista < Solicitante
	def initialize(tipoDocumento, numeroDocumento, nombre, apellido, edad, ingreso, tieneDependiente, tieneBolsaViaje)
		super(tipoDocumento, numeroDocumento, nombre, apellido, edad, ingreso)
		@tipoSolicitante = 'T'
		@tieneDependiente, @tieneBolsaViaje = tieneDependiente, tieneBolsaViaje
		@puntaje = obtenerPuntaje()
		@estado = @puntaje >= 60 ? 'Aprobada' : 'Rechazada'	
	end

private 
	def obtenerPuntaje ()
		puntajeBase = super()
		if (@tieneDependiente == 'SI') 
			puntajeBase += 7
		end
		if (@tieneBolsaViaje == 'SI')
			puntajeBase += 7
		end
		return puntajeBase
	end
end
