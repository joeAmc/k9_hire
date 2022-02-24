# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Booking.destroy_all
Dog.destroy_all
User.destroy_all

puts "Creating 10 Users..."
10.times do
  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: '123456'
  )
end
puts 'User Seed Complete!'

locations = [
  "14 Church Lane, London, N48 1OA", "9801 Main Road, London, N18 7ZX", "80 Church Street, London, SE69 8NU",
  "9176 Church Street, London, WC65 8BI", "13 Kings Road, London, SE03 8AK", "2 West Street, London, N86 3ZE",
  "87 Station Road, London, EC23 7KG", "1 Victoria Road, London, EC05 7LS", "84 Green Lane, London, SE68 3WP",
  "333 The Avenue, London, WC86 2WQ"
]

puts "Creating 10 Dogs..."
locations.each do |location|
  dog = Dog.create!(
    name: Faker::Creature::Dog.name,
    breed: Faker::Creature::Dog.breed,
    age: Faker::Number.between(from: 1, to: 15),
    description: Faker::Creature::Dog.meme_phrase,
    price: Faker::Commerce.price(range: 5..20.0, as_string: true),
    location: location,
    user: User.last
  )
end
puts 'Dog Seed Complete!'

# puts "Creating 10 Bookings..."
# 10.times do
#   booking = Booking.create!(
#     availability: Faker::Date.forward(days: 7),
#     total_price: Faker::Commerce.price(range: 50..100.0, as_string: true)
#   )
# end
# puts 'Booking Seed Complete!'

# Faker::Address.full_address
