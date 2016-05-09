# Motorcycle
# Sedan
# Hoverboard
# Unicycle
# 18 Weeler

require_relative ('lib/vehicles')
require_relative ('lib/wheelcounter')

ninja = Motorcycle.new # 2
mazda = Sedan.new # 4
hoverboard = Hoverboard.new # 0
my_cycle = Unicycle.new # 1
truck = Truck.new # 18

truck.wheels

array_of_vehicles = [ninja, mazda, hoverboard, my_cycle, truck]

wheel_counter = WheelCounter.new(array_of_vehicles)
puts wheel_counter.count_wheels

#25