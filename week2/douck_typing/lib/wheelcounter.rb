class WheelCounter 
	def initialize (list_of_vehicles)
		@list_of_vehicles = list_of_vehicles
	end


	def count_wheels
			@list_of_vehicles.reduce(0) do | sum, vehicle |
			sum + vehicle.wheels
		end
	end
end

