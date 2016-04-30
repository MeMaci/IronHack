class Car
	attr_accessor :color
	#initialize 
	def initialize (my_color , my_sound)
		@color = my_color
		@sound = my_sound
	end	

	#instance Method
	def make_noise
		puts "My #{@color} car goes #{@sound}"
	end

	def play_radio
		puts "Waka Flaka is playing (on the radio)"
	end
end 	

class RaceCar < Car

	def make_noise
	puts "My #{@color} car goes #{@sound.upcase}"	
	end
	
end

volvo = Car.new "Yellow", "Volvoooooo"
mazda = Car.new "Pink", "Mazdaaaaaa"
honda = Car.new "Purple", "hondaaaaaa"
ferrari = RaceCar.new "Red", "vroom vroom"

volvo.make_noise
mazda.make_noise

honda.color = "GREEN"
honda.make_noise

ferrari.make_noise
