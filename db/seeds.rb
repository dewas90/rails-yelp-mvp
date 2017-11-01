# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

category = ["chinese", "italian", "japanese", "french", "belgian"]

puts 'Creating 10 elements in the DB...'
10.times do
  Restaurant.create!(
    name: Faker::StarWars.character,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: category.sample,
  )
end
puts 'Finished!'


