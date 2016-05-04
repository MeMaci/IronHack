# Upper_Case_First_Letter = ["miami", "madrid", "barcelona"].map do |city|
# 	city.capitalize
# end

# puts Upper_Case_First_Letter


cities = ["miami", "barcelona", "madrid"]

# pretty_cities = cities.map do |city| 
# 	city = city [0..3]
# 	city.capitalize
# end

pretty_cities = cities.map { |city| city.capitalize}

p pretty_cities