class Collection < ApplicationRecord
  has_many :product_collections
  has_many :products, through: :product_collections
end
