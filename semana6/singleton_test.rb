require 'singleton'
class SingletonTest
	include Singleton
	def operacion 
		@contador = (@contador or 0) + 1
	end
end

t1 = SingletonTest.instance()
t2 = SingletonTest.instance()
t3 = SingletonTest.instance()

puts t1.operacion
puts t1.operacion
puts t2.operacion
puts t3.operacion
