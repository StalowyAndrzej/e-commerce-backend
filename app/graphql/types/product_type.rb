# frozen_string_literal: true

module Types
  class ProductType < Types::BaseObject
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :description, String, null: true
    field :id, ID, null: false
    field :image, String, null: true
    field :name, String, null: true
    field :price, Integer, null: true
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
