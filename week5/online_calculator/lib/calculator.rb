class Calculator

	def calculate_add(first, second)
  		result = first + second
  		result
  		# puts "The addition of #{first} and #{second} is #{result}"
	end

	def calculate_multiply(first, second)
  		result = first * second
  		puts "The multiplication of #{first} and #{second} is #{result}"
	end

	def calculate_subtract(first, second)
  		result = first - second
  		puts "The subtraction of #{first} and #{second} is #{result}"
	end

	def calculate_divide(first, second)	
  		result = first / second
  		puts "The division of #{first} and #{second} is #{result}"
  end
		
end