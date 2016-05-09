# Attributes
	# Name
	# Shield
	# Blasters
	# Speed
	# Damage

# Actions
	# Fly
	# Warp Speed
	# Shoot
	# Attack another spaceship

class SpaceShip

	attr_accessor :shield, :name

	@@space_ship_counter = 0
	# instance variables, related to one SpaceShip
	def initialize(name, shield, blasters, speed, damage)
		@name = name
		@shield = shield
		@blasters = blasters
		@speed = speed
		@damage = damage
		# Class Variable, related to all SpaceShips, use sparingly
		@@space_ship_counter += 1
	end
	
	def fly
		puts "The spaceship is flying at #{@speed} parsecs"
	end

	# Class Method, related to all instances of class (counting)
	def self.number_of_spaceships
		puts "The number of spaceships created is : #{@@space_ship_counter}"
	end

	# Class Method_02, related to all instances of class (not counting)
	# def self.fly_all_ships(spaceships)
	# 	spaceships.each do | ship | 
	# 		ship.fly
	# 	end
	# end
	def dead?
		if  @shield <= 0
			true
		else
			false
		end
	end
	def attack(another_spaceship)
		another_spaceship.shield -=@damage
		puts "#{@name} hit for #{@damage}"
		puts "#{another_spaceship.name} has #{another_spaceship.shield} shielt left"
	end

end