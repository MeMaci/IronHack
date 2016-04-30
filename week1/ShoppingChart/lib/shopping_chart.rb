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