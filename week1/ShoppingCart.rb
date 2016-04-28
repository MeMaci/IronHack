class ShoppingCart
  def initialize
    @items = []
  end
end

class Item 
  def initialize(name, price)
      @name = name
      @price = price
  end

  def price
      puts "This is your total #{@price}"
  end
end

class Houseware < Item
  def price
      #Hmmm maybe this changes somehow..
  end
end

class Fruit < Item
  def price
      #Something special may go here too...
  end
end