# frozen_string_literal: true

FactoryBot.define do
  factory :category do
    name { Faker::Commerce.department(max: 1, fixed_amount: true) }
    description { Faker::Lorem.sentence(word_count: 10) }
    is_active { Faker::Boolean.boolean }
    created_at { Faker::Time.backward(days: 365) }
    updated_at { Faker::Time.backward(days: 365) }
  end
end
