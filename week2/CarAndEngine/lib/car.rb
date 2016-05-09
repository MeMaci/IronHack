

class Car
	def initialize(sound, engine)
		
		@sound = sound
		@engine = engine
	end

	def start
		#puts sound of the engine and sound of the car
		puts "The car goes : #{@sound}, and the engine goes : #{@engine.move_pistons}"
	end
end