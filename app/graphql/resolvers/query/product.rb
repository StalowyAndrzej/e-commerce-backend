# frozen_string_literal: true

module Resolvers
  module Query
    class Product < BaseResolver
      type Types::ProductType, null: false
      argument :id, String, required: true

      def resolve(id:)
        product = ::Product.find_by(id: id)

      end
    end
  end
end
