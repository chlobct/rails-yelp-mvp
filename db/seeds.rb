# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do |i|
  puts "Creating Restaurant n°#{i}..."
  Restaurant.create(
      name: Faker::Dessert.flavor,
      address: Faker::Address.street_address,
      category: Restaurant::CATEGORIES.sample,
    )
end



# 20.times do |i|
#   puts "Creating Pet n°#{i}..."
#   Pet.create(
#       name: Faker::Pokemon.name,
#       address: Faker::Address.street_address,
#       category: Pet::CATEGORIES.sample,
#       found_on: Faker::Date.between(20.days.ago, Date.today)
#     )
# end
