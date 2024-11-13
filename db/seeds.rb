# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0734567893", category: "japanese")
puts "Created Dishoom"
Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0734567563", category: "chinese")
puts "Created Pizza East"
Restaurant.create!(name: "Chez Alice", address: "23 rue des capucins", phone_number: "0722567893", category: "french")
puts "Created Chez Alice"
Restaurant.create!(name: "Trop Tard", address: "au bar", phone_number: "0434567893", category: "french")
puts "Created Trop Tard"
Restaurant.create!(name: "Le Wagon", address: "à l'ouest", phone_number: "0634567893", category: "japanese")
puts "Created Le Wagon"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
