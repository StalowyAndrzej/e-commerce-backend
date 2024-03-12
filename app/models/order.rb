# frozen_string_literal: true

class Order < ApplicationRecord
  has_many :order_items
  enum status: { pending: 0, processing: 1, completed: 2, cancelled: 3 }
end
