class MilkShake
  def initialize (ingredients , base_price)
   
    @ingredients = [ ]
    @base_price = 3

  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
    puts "I like to have mine with #{@ingredients} "
  end

end

class Ingredient
  def initialize(name, price)
    @name = name
    @price = price
  end
end

nizars_milkshake = MilkShake.new
banana = Ingredient.new "Banana", 2
chocolate_chips = Ingredient.new "Chocolate Chips", 1
nizars_milkshake.add_ingredient(banana)

