class ShoppingCart
  
  def initialize
    @items = []
  end

  def add_items(items)
    @items.push(items)
  end

  def checkout
  	total = 0
     @items.each do | single_item |
      total += single_item.price
    end 

    puts "Your price for today is #{total}"
  end
end

class Item 
  attr_accessor :price

  def initialize(name, price)
      @name = name
      @price = price
  end

end

class Houseware < Item
  def price
      
  end
end

# class Fruit < Item
#   def price
#       #Something special may go here too...
#   end
# end

# banana = Fruit.new("Banana", 10)

my_list = ShoppingCart.new

banana = Item.new "Banana", 10
Rice = Item.new "Rice", 1
Orange_juice = Item.new "Orange_juice", 10

my_list.add_items(banana)
my_list.add_items(Rice)
my_list.add_items(Orange_juice)
my_list.checkout
