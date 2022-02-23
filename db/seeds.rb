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

puts "Creating 10 Dogs..."
10.times do
  dog = Dog.create!(
    name: Faker::Creature::Dog.name,
    breed: Faker::Creature::Dog.breed,
    age: Faker::Number.number(digits: 2),
    description: Faker::Lorem.sentences(number: 3),
    price: Faker::Commerce.price(range: 10..50.0, as_string: true),
    location: Faker::Address.full_address,
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
