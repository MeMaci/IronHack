class MilkShake
  def initialize(flavor, price)
    @flavor = flavor
    @price = price
  end

  def print_order
    puts "This is #{@flavor} milkshake and its $ #{@price}."
  end
end

class Ingredient
  def initialize(name, price)
    @name = name
    @price = price
  end
  def add_ingredient
  	puts "And add #{@name} this will be $ #{@price} "
  end
end

milkshake = MilkShake.new "Chocolate" , 7
banana = Ingredient.new "Banana" , 2

milkshake.print_order
banana.add_ingredient

# class MilkShake

#   def initialize (ingredients)
#     @ingredients = [ ]    
#   end

#   def add_ingredient(ingredient)
#     @ingredients.push(ingredient)
#   end
  
# end

# nizars_milkshake = MilkShake.new "Chocolate"
# nizars_milkshake.add_ingredient "honey"
