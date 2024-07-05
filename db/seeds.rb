# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.destroy_all
Panier.destroy_all
Reservation.destroy_all

User.create!(email: "stef@terre.fr", password: "azerty")

Panier.create!(user_id: User.first.id, name: "Panier 1", description: "Panier de légumes petit", price: 15)
Panier.create!(user_id: User.first.id, name: "Panier 2", description: "Panier de fruits petit", price: 15)
Panier.create!(user_id: User.first.id, name: "Panier 3", description: "Panier de légumes grand", price: 25)
Panier.create!(user_id: User.first.id, name: "Panier 4", description: "Panier de fruits grand", price: 25)
