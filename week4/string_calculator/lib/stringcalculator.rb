class StringCalculator

	#this one code does the job of the code below!!
	def add(numbers)

		numbers.split(",").reduce(0){ | sum, n| sum + n.to_i}
	
	end

	# def add(numbers_as_string)

	# 	nums = numbers_as_string.split(",")

	# 	if nums.empty?
	# 		0
	# 	elsif nums.length == 1
	# 		nums.to_i 
	# 	else 
	# 		nums[0].to_i + nums[1].to_1	
	# 	end
	# end
	
end