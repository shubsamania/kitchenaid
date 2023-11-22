# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "faker"

Booking.destroy_all
Kitchen.destroy_all
User.destroy_all

user = User.create(email: "abc@gmail.com", password: "1234567")
kitchen = Kitchen.create(name: "ABC", availiability: true, description: "description", user: user, price: 40)
Booking.create!(start_date: Date.today, end_date: Date.tomorrow, user:user, kitchen:kitchen, total_price: 10)

10.times do
  user = User.new(
    email: "#{Faker::Name.first_name}@gmail.com",
    password: "1234567"
  )
  user.save!

  kitchen = Kitchen.new(
    user:user,
    name: ["Bread Maker", "Ice Cream Maker", "Food Dehydrator", "Pasta Maker", "Soda Maker", "Popcorn Machine", "Egg Cooker",
    "Waffle Maker", "Rice Cooker", "Sushi Maker", "Electric Grill", "Donut Maker", "Cotton Candy Machine", "Chocolate Fountain", "Panini Press"].sample,
    availiability: true,
    description: "this is a description",
    price: rand(1..100)
  )
  kitchen.save!

Booking.create!(start_date: Faker::Date.between(from: '2022-01-01', to: '2023-12-31'), end_date: Faker::Date.between(from: '2023-01-31', to: '2024-12-31'), user:user, kitchen: kitchen, total_price: 100)
Booking.create!(start_date: Faker::Date.between(from: '2022-01-01', to: '2023-12-31'), end_date: Faker::Date.between(from: '2023-01-31', to: '2024-12-31'), user:user, kitchen: kitchen, total_price: 100)
Booking.create!(start_date: Faker::Date.between(from: '2022-01-01', to: '2023-12-31'), end_date: Faker::Date.between(from: '2023-01-31', to: '2024-12-31'), user:user, kitchen: kitchen, total_price: 100)
end
