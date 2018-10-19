# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
require "json"

puts 'Creating ingredients...'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

drinks_total = open(url).read

drinks_h = JSON.parse(drinks_total)

all_drinks = drinks_h["drinks"]
all_drinks.each do |drink|
  Ingredient.create(
    name: drink["strIngredient1"]
  )
end

puts 'Finished!'
