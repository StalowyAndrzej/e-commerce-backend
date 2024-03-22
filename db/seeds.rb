# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

20.times do
  Product.create(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.sentence(word_count: 3),
    price: Faker::Commerce.price(range: 10..100.0),
    image: Faker::LoremFlickr.image(size: '200x300', search_terms: ['product'])
  )
end

10.times do
  Category.create(name: Faker::Commerce.unique.department)
end

10.times do
  Collection.create(name: Faker::Commerce.unique.vendor)
end
