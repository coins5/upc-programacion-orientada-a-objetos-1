require('./Criollo.rb')
require('./Rock.rb')

class Sistema
	def initialize()
		@listaParticipantes = []
	end

	def agregarParticipante (participante)
		@listaParticipantes.push(participante)
	end

	def obtenerDatosConcursanteGanador ()
		participanteGanador = nil
		puntajeMayor = 0
		for i in 0..@listaParticipantes.size-1
			p = @listaParticipantes[i]
			puntaje = p.calcularPuntaje()
			if (puntaje > puntajeMayor)
				puntajeMayor = puntaje
				participanteGanador = p
			end
		end

		separador = 20 
		print "NOMBRE".ljust(separador)
		print "DNI".ljust(separador)
		print "EDAD".ljust(separador)
		print "GRUPO".ljust(separador)
		print "CODIGO SECRETO".ljust(separador)
		puts
		print participanteGanador.nombre.ljust(separador)
		print participanteGanador.dni.ljust(separador)
		print participanteGanador.edad.to_s.ljust(separador)
		print (participanteGanador.equipo == nil ? '' : participanteGanador.equipo).ljust(separador)
		print (participanteGanador.codigoSecreto == nil ? '' : participanteGanador.codigoSecreto).ljust(separador)
		puts
		return participanteGanador
	end
end

c1 = Criollo.new("C1", "12345670", 20, "limeño")
c2 = Criollo.new("C2", "12345671", 21, "samba")
c3 = Criollo.new("C3", "12345672", 22, "limeño")

r1 = Rock.new("R1", "12345673", 23, "AJC7jsmKs.-l")
r2 = Rock.new("R2", "12345674", 24, "s41cS1sz2=wq")
r3 = Rock.new("R3", "12345675", 25, "s.Jsm6$ws9cc")

s1 = Sistema.new()
# Agregando participantes
s1.agregarParticipante(c1)
s1.agregarParticipante(c2)
s1.agregarParticipante(c3)

s1.agregarParticipante(r1)
s1.agregarParticipante(r2)
s1.agregarParticipante(r3)

# Agregando puntos
c1.agregarMensajesTexto(5)
c1.agregarCantidadLlamadas(2)

c2.agregarMensajesTexto(4)
c2.agregarCantidadLlamadas(3)

c3.agregarMensajesTexto(3)
c3.agregarCantidadLlamadas(4)

r1.agregarMensajesTexto(6)
r1.agregarCantidadLlamadas(1)

r2.agregarMensajesTexto(5)
r2.agregarCantidadLlamadas(2)

r3.agregarMensajesTexto(4)
r3.agregarCantidadLlamadas(3)

# Obteniendo al ganador
s1.obtenerDatosConcursanteGanador()
