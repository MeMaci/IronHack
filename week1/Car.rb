class Car

	#initialize 
	def initialize (my_color , my_sound)
		@color = my_color
		@sound = my_sound
	end	

	#instance Method
	def honk
		puts "My #{@color} car goes #{@sound}"
	end

	def play_radio
		puts "Waka Flaka is playing (on the radio)"
	end
end 	

volvo = Car.new "Yellow", "Volvoooooo"
mazda = Car.new "Pink", "Mazdaaaaaa"
honda = Car.new "Purple", "hondaaaaaa"

volvo.honk
mazda.honk
honda.honk
honda.honk