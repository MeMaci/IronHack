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
    total
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
      if @price > 100
        @price *0.95
      else
        @price
      end
  end
end


class Fruit < Item
  def price
    today = Time.now
    if today.saturday? || today.sunday?
      @price * 0.90
    else
      @price
    end
  end
  
end

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
