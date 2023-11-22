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
require "open-uri"


Review.destroy_all
Booking.destroy_all
Kitchen.destroy_all
User.destroy_all

user = User.create(email: "abc@gmail.com", password: "1234567")

kitchen = Kitchen.new(name: "Ice Cream Maker", availiability: true, description: "description", user: user, price: rand(1..100))
file = URI.open("https://m.media-amazon.com/images/I/71YdJsen6XL.__AC_SX300_SY300_QL70_ML2_.jpg")
kitchen.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
kitchen.save!

kitchen = Kitchen.new(name: "Bread Maker", availiability: true, description: "description", user: user, price: rand(1..100))
file = URI.open("https://m.media-amazon.com/images/I/71tVL1cqNRL.__AC_SX300_SY300_QL70_ML2_.jpg")
kitchen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
kitchen.save!

kitchen = Kitchen.new(name: "Food Dehydrator", availiability: true, description: "description", user: user, price: rand(1..100))
file = URI.open("https://m.media-amazon.com/images/I/81SWavTQ5GL.__AC_SX300_SY300_QL70_ML2_.jpg")
kitchen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
kitchen.save!

kitchen = Kitchen.new(name: "Pasta Maker", availiability: true, description: "description", user: user, price: rand(1..100))
file = URI.open("https://m.media-amazon.com/images/I/71WrYTltUpL.__AC_SX300_SY300_QL70_ML2_.jpg")
kitchen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
kitchen.save!

kitchen = Kitchen.new(name: "Soda Maker", availiability: true, description: "description", user: user, price: rand(1..100))
file = URI.open("https://m.media-amazon.com/images/I/71M+rCYmEZL._AC_SY300_SX300_.jpg")
kitchen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
kitchen.save!

kitchen = Kitchen.new(name: "Popcorn Machine", availiability: true, description: "description", user: user, price: rand(1..100))
file = URI.open("https://m.media-amazon.com/images/I/71g7twz-DGL.__AC_SX300_SY300_QL70_ML2_.jpg")
kitchen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
kitchen.save!

kitchen = Kitchen.new(name: "Egg Cooker", availiability: true, description: "description", user: user, price: rand(1..100))
file = URI.open("https://m.media-amazon.com/images/I/61HkGZ9uonL.__AC_SX300_SY300_QL70_ML2_.jpg")
kitchen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
kitchen.save!

kitchen = Kitchen.new(name: "Waffle Maker", availiability: true, description: "description", user: user, price: rand(1..100))
file = URI.open("https://m.media-amazon.com/images/I/71Dn0Rfa+1L._AC_SY300_SX300_.jpg")
kitchen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
kitchen.save!

kitchen = Kitchen.new(name: "Rice Cooker", availiability: true, description: "description", user: user, price: rand(1..100))
file = URI.open("https://m.media-amazon.com/images/I/61iywbmCbcL._AC_SX522_.jpg")
kitchen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
kitchen.save!

kitchen = Kitchen.new(name: "Sushi Maker", availiability: true, description: "description", user: user, price: rand(1..100))
file = URI.open("https://m.media-amazon.com/images/I/81U47eM+riL._AC_SY300_SX300_.jpg")
kitchen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
kitchen.save!

kitchen = Kitchen.new(name: "Electric Grill", availiability: true, description: "description", user: user, price: rand(1..100))
file = URI.open("https://m.media-amazon.com/images/I/71lE00F-7cL.__AC_SX300_SY300_QL70_ML2_.jpg")
kitchen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
kitchen.save!

kitchen = Kitchen.new(name: "Donut Maker", availiability: true, description: "description", user: user, price: rand(1..100))
file = URI.open("https://m.media-amazon.com/images/I/61iGBMpdcRL.__AC_SX300_SY300_QL70_ML2_.jpg")
kitchen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
kitchen.save!

kitchen = Kitchen.new(name: "Cotton Candy Machine", availiability: true, description: "description", user: user, price: rand(1..100))
file = URI.open("https://m.media-amazon.com/images/I/61bXrhGOPLL.__AC_SX300_SY300_QL70_ML2_.jpg")
kitchen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
kitchen.save!

kitchen = Kitchen.new(name: "Chocolate Fountain", availiability: true, description: "description", user: user, price: rand(1..100))
file = URI.open("https://m.media-amazon.com/images/I/61rJb8cH2kL.__AC_SX300_SY300_QL70_ML2_.jpg")
kitchen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
kitchen.save!

kitchen = Kitchen.new(name: "Panini Press", availiability: true, description: "description", user: user, price: rand(1..100))
file = URI.open("https://m.media-amazon.com/images/I/51lPN-jru8L.__AC_SX300_SY300_QL70_ML2_.jpg")
kitchen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
kitchen.save!

Booking.create!(start_date: Date.today, end_date: Date.tomorrow, user:user, kitchen:kitchen, total_price: 10)



# 10.times do
#   user = User.new(
#     email: "#{Faker::Name.first_name}@gmail.com",
#     password: "1234567"
#   )
#   user.save!

#   kitchen = Kitchen.new(
#     user:user,
#     name: ["Bread Maker", "Ice Cream Maker", "Food Dehydrator", "Pasta Maker", "Soda Maker", "Popcorn Machine", "Egg Cooker",
#     "Waffle Maker", "Rice Cooker", "Sushi Maker", "Electric Grill", "Donut Maker", "Cotton Candy Machine", "Chocolate Fountain", "Panini Press"].sample,
#     availiability: true,
#     description: "this is a description",
#     price: rand(1..100),
#   )
#     file = File.open
#     kitchen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
#     kitchen.save!

# Booking.create!(start_date: Faker::Date.between(from: '2022-01-01', to: '2023-12-31'), end_date: Faker::Date.between(from: '2023-01-31', to: '2024-12-31'), user:user, kitchen: kitchen, total_price: 100)
# Booking.create!(start_date: Faker::Date.between(from: '2022-01-01', to: '2023-12-31'), end_date: Faker::Date.between(from: '2023-01-31', to: '2024-12-31'), user:user, kitchen: kitchen, total_price: 100)
# Booking.create!(start_date: Faker::Date.between(from: '2022-01-01', to: '2023-12-31'), end_date: Faker::Date.between(from: '2023-01-31', to: '2024-12-31'), user:user, kitchen: kitchen, total_price: 100)
# end
