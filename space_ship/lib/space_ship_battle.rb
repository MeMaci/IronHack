# Attributes
	# Attacking spaceship
	# Defending spaceship
# Actions
	# Battle

class SpaceShipBattle
	def initialize ( first_spaceship, second_spaceship)
		@attacking_spaceship = first_spaceship
		@defending_spaceship = second_spaceship
	end
	
	def battle
		until @attacking_spaceship.dead? || @defending_spaceship.dead?
			# Have each SpaceShip attack the other
			@attacking_spaceship.attack(@defending_spaceship)
			#switch position
			new_attacker = @defending_spaceship.clone
			new_defender = @attacking_spaceship.clone

			@attacking_spaceship = new_attacker
			@defending_spaceship = new_defender
		end
		puts "THE END"
	end
end