# frozen_string_literal: true

module Resolvers
  module Query
    class Category < BaseResolver
      type Types::CategoryType, null: false
      argument :id, String, required: true

      def resolve(id:)
        ::Category.find_by(id:)
      end
    end
  end
end
