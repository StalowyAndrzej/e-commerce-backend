# frozen_string_literal: true

class ProductCollection < ApplicationRecord
  belongs_to :product
  belongs_to :collection
end
