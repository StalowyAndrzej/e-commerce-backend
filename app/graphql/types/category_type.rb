# frozen_string_literal: true

module Types
  class CategoryType < Types::BaseObject
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :description, String, null: true
    field :id, ID, null: false
    field :is_active, Boolean, null: true
    field :name, String, null: true
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
