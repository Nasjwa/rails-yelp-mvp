# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning restaurants..."
Restaurant.destroy_all

puts "Seeding restaurants..."
Restaurant.create!([
  { name: "Epicure",      address: "75008 Paris",     phone_number: "+33 1 23 45 67 89", category: "french"  },
  { name: "Sushi Zen",    address: "Shinjuku, Tokyo", phone_number: "+81 3 1234 5678",   category: "japanese"},
  { name: "Pasta Basta",  address: "Rome, Italy",     phone_number: "+39 06 5555 1111",  category: "italian" },
  { name: "Wok Star",     address: "Shanghai, China", phone_number: "+86 21 2222 3333",  category: "chinese" },
  { name: "Frites & Co",  address: "Brussels, BE",    phone_number: "+32 2 999 8888",    category: "belgian" }
])
puts "Done!"
