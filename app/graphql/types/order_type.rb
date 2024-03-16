# frozen_string_literal: true

module Types
  class OrderType < Types::BaseObject
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :id, ID, null: false
    field :status, Integer, null: true
    field :total, Float, null: true
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
