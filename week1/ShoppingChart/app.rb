require_relative('lib/Shopping_chart')
require_relative('lib/items')
require_relative('lib/houseware')
require_relative('lib/fruit')
# Application
# Store Menu

my_list = ShoppingCart.new

banana = Fruit.new "Banana", 10
Vacuum = Houseware.new "Vacuum", 150

Rice = Item.new "Rice", 1
Orange_juice = Item.new "Orange_juice", 10

my_list.add_items(banana)
my_list.add_items(Rice)
my_list.add_items(banana)
my_list.add_items(Orange_juice)
my_list.add_items(Vacuum)
my_list.add_items(Vacuum)

puts "Your total price today is #{my_list.checkout}. Have a nice day!"
