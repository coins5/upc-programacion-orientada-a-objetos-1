class Trabajador
	attr_reader :nombre, :dni, :horasExtra, :sueldoBase, :aumento, :sueldoNeto
	def initialize(nombre, dni, horasExtra, sueldoBase, factor)
		@nombre, @dni, @horasExtra, @sueldoBase = nombre, dni, horasExtra, sueldoBase
		@aumento = (sueldoBase * factor) + extra()
		@sueldoNeto = sueldoBase + @aumento
	end

	def isValid ()
		return isString(@nombre) && isString(@dni) && isNumberGTZero(@horasExtra) && isNumberGTZero(@sueldoBase)
	end	

private
	def extra ()
		return @sueldoBase * @horasExtra / 100
	end

	def isNumberGTZero (number)
		return (isNumber(number) && number > 0)
	end
	def isNumber (number)
		begin
			Float(number)
			return true
		rescue Exception => e
			return false
		end
	end
	def isString (str)
		return str.class == String
	end
end