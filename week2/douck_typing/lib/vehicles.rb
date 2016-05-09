
# require_relative ('lib/wheelcounter')

class Motorcycle
	attr_accessor :wheels
	def initialize 
		@wheels = 2
	end
end

class Sedan
	attr_accessor :wheels
	def initialize #(wheels).. we dont need this because we know how many wheels each time it will have
		@wheels = 4
	end
end

class Hoverboard
	attr_accessor :wheels
	def initialize
		@wheels = 0
	end
end

class Unicycle
	attr_accessor :wheels
	def initialize
		@wheels = 1
	end
end

class Truck
	attr_accessor :wheels
	def initialize
		@wheels = 18
	end
end