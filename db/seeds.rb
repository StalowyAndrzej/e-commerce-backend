# frozen_string_literal: true

10.times do
  Product.create!(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph(sentence_count: 2),
    price: Faker::Commerce.price(range: 10..100),
    image: Faker::LoremFlickr.image(size: '300x300'),
    created_at: Faker::Time.between(from: DateTime.now - 30, to: DateTime.now),
    updated_at: Faker::Time.between(from: DateTime.now - 30, to: DateTime.now)
  )
end

10.times do
  Category.create(
    name: Faker::Commerce.department(max: 2, fixed_amount: true),
    description: Faker::Lorem.sentence,
    is_active: Faker::Boolean.boolean(true_ratio: 0.8)
  )
end

products = Product.all
categories = Category.all

products.each do |product|
  categories.sample(rand(1..3)).each do |category|
    ProductCategory.create!(
      product_id: product.id,
      category_id: category.id,
      created_at: Faker::Time.between(from: DateTime.now - 30, to: DateTime.now),
      updated_at: Faker::Time.between(from: DateTime.now - 30, to: DateTime.now)
    )
  end
end

Rails.logger.debug do
  "Created: #{Product.count} products, #{Category.count} categories, #{ProductCategory.count} product_categories"
end
