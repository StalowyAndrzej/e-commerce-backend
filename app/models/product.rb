class Product < ApplicationRecord
  has_many :categories
  has_many :product_collections
  has_many :collections, through: :product_collections
end
