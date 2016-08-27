# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pizza = Food.create(name:"Pizza", calories: 600, rating: "A")
ice_cream = Food.create(name:"Ice Cream", calories: 190, rating: "F")
ceviche = Food.create(name:"Ceviche", calories: 0, rating: "A+")
tacos = Food.create(name:"Tacos", calories: 10, rating: "B")
