require_relative('lib/home')
require_relative('lib/home_sorter')

joshs_home = Home.new("Joshs Home", "Miami", 1, 45)
farazs_home = Home.new("Faraz's Home", "Miami", 2, 37)
bobs_home = Home.new("Bob's Home", "Cancun", 4, 35)
petes_home = Home.new("Pete's Home", "Detroit", 4, 56)
nizars_home = Home.new("Nizar's Home", "Puerto Rico", 3, 40)



# homes = [
#   Home.new("Nizar's place", "San Juan", 2, 42),
#   Home.new("Fernando's place", "Seville", 5, 47),
#   Home.new("Josh's place", "Pittsburgh", 3, 41),
#   Home.new("Gonzalo's place", "Málaga", 2, 45),
#   Home.new("Ariel's place", "San Juan", 4, 49)
# ]

list_of_homes = [
					joshs_home,
					farazs_home,
					bobs_home,
					petes_home,
					nizars_home
					]

home_sorter = HomeSorter.new(list_of_homes)
home_sorter.home_printer

