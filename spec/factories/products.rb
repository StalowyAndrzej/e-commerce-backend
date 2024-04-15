# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    name { Faker::Commerce.product_name }
    description { Faker::Lorem.paragraph }
    price { Faker::Commerce.price(range: 10..1000, as_string: false) }
    image { Faker::LoremFlickr.image(size: '300x300') }
    created_at { Faker::Time.backward(days: 365) }
    updated_at { Faker::Time.backward(days: 365) }
  end
end
