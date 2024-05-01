# frozen_string_literal: true

FactoryBot.define do
  factory :category do
    name { 'MyString' }
    description { 'MyString' }
    is_active { false }
  end
end
