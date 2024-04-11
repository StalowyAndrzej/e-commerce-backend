# frozen_string_literal: true

10.times do
  Product.create!(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph(sentence_count: 2),
    price: Faker::Commerce.price(range: 10..100),
    image: Faker::LoremFlickr.image(size: "300x300"),
    created_at: Faker::Time.between(from: DateTime.now - 30, to: DateTime.now),
    updated_at: Faker::Time.between(from: DateTime.now - 30, to: DateTime.now)
  )
end

puts "Seed data has been successfully added!"
