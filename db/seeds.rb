# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning the database..."

Restaurant.destroy_all

puts "Creating 5 fake restaurants..."

5.times do
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  Restaurant.create(
    name: Faker::Restaurant.name,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    address: Faker::Address.city,
    category: CATEGORIES.sample
  )
end
puts "Created: #{Restaurant.count} restaurants"
