# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "cleaning database"
Recipe.destroy_all

puts "creating recipes"

Recipe.create(
  name: "cornflakes",
  description: "The perfect start to your day",
  image_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Forganicallyaddison.com%2Fare-corn-flakes-gluten-free%2F&psig=AOvVaw1DTIaO8sAxyI_8Cn5gtYhs&ust=1727778984556000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCIDQnpi96ogDFQAAAAAdAAAAABAE",
  rating: 2.5,
)

Recipe.create(
  name: "pizza",
  description: "Yummy and cheesy, the perfect comfort food",
  image_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.cobsbread.com%2Fus%2Frecipes%2Fhot-honey-pepperoni-pizza%2F&psig=AOvVaw1NJ0SM3oEAokhaEjhhUUMt&ust=1727779254501000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCNDD7ri96ogDFQAAAAAdAAAAABAE",
  rating: 8.9,
)

Recipe.create(
  name: "speghetti and meatballs",
  description: "The best pasta dish for you and your family",
  image_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fcooking.nytimes.com%2Frecipes%2F6370-pasta-with-meatballs&psig=AOvVaw1o-lNo7tomC_CYLaeCsmyz&ust=1727779491062000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCKi-qam-6ogDFQAAAAAdAAAAABAE",
  rating: 9.6,
)

Recipe.create(
  name: "ham sandwich",
  description: "Great for a quick lunch",
  image_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.seriouseats.com%2Fham-and-cheese-sandwich-recipe-8605187&psig=AOvVaw345RM2b0opUmKfAYrkzQsJ&ust=1727779796076000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCMCsl7u_6ogDFQAAAAAdAAAAABAE",
  rating: 4.2,
)

puts "finished creating recipes"
