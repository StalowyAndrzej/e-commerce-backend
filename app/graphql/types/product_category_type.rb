# frozen_string_literal: true

module Types
  class ProductCategoryType < Types::BaseObject
    field :category_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :id, ID, null: false
    field :product_id, Integer, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
