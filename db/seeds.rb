# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'json'
require 'open-uri'


puts 'Cleaning database...'
Ingredient.destroy_all

puts 'Creating Ingredients...'

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient_serialized = open(url).read
list_ingredients = JSON.parse(ingredient_serialized)



50.times do
  ingredients = Ingredient.create(name: list_ingredients["drinks"].sample["strIngredient1"])
  p ingredients
end



puts "DB done son."




