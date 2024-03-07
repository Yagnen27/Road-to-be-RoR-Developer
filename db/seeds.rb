# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

users_details = User.create(
  first_name: 'Erik',
  last_name: 'Watson',
  contact: 1234567890,
  email: 'erik.watson@gmail.com',
  address: "Science City",
  city: 'Karnavati',
  state: 'Gujarat',
  pincode: 380081
)

users_details = User.new(
  first_name: 'Shane',
  last_name: 'Watson',
  contact: 1123456789,
  email: 'shane.watson@gmail.com',
  address: "Chandlodia",
  city: 'Karnavati',
  state: 'Gujarat',
  pincode: 382481
)

users_details.save
