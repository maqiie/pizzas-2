# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
#generate fake data for pizza model
10.times do
    Pizza.create(
        name: Faker::Food.dish,
        ingredients: Faker::Food.ingredients
    )
end

# Generate fake data for Restaurant model
5.times do
    Restaurant.create(
      name: Faker::Restaurant.name,
      address: Faker::Address.full_address
    )
end

# Generate fake data for RestaurantPizza model
10.times do
    RestaurantPizza.create(
      price: Faker::Commerce.price(range: 1..30.0),
      pizza_id: rand(1..10),
      restaurant_id: rand(1..5)
    )
end
