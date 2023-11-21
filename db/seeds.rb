# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Booking.destroy_all
Kitchen.destroy_all

User.destoy_all

# 2-3 user

# 4 kitchen appliances

# 2 bookings




user = User.create(email: "abc@gmail.com", password: "1234567")
kitchen = Kitchen.create(name: "ABC", availiability: true, description: "shdhhd", user: user, price: 40)
Booking.create!(start_date: Date.today, end_date: Date.tomorrow, total_price: 100, user: user, kitchen: kitchen)
