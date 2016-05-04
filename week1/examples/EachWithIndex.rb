cities = ["miami", "barcelona", "madrid"]

cities.each_with_index do |city, index|
	puts "#{index +1}: #{city}"
end