# frozen_string_literal: true

module Types
  class OrderItemType < Types::BaseObject
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :id, ID, null: false
    field :product_id, Integer, null: false
    field :quantity, Integer, null: true
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
