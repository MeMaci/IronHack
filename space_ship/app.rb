require_relative('lib/space_ship')
require_relative('lib/space_ship_battle')

# Before we've created a couple of SpaceShips
# SpaceShip.number_of_spaceships


millienium_falcon = SpaceShip.new("Millenium Falcon", 100, "Mega Blaster Ray", 9001, 7)
falcon_nine = SpaceShip.new("Falcon Nice", 100, "Elon Musk Blaster Cannon", 100001, 9)

# After we've created a couple of SpaceShips
# SpaceShip.number_of_spaceships
millienium_falcon.attack(falcon_nine)
falcon_nine.attack(millienium_falcon)

my_battle = SpaceShipBattle.new(millienium_falcon, falcon_nine)
my_battle.battle

# Class Method_02, related to all instances of class (not counting)
# SpaceShip.fly_all_ships([millienium_falcon, falcon_nine])

# millienium_falcon.fly
# => "Flying at #{speed}"

