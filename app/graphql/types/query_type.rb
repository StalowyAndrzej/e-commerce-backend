# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :node, Types::NodeType, null: true do
      argument :id, ID, required: true
    end

    def node(id:)
      context.schema.object_from_id(id, context)
    end

    def nodes(ids:)
      ids.map { |id| context.schema.object_from_id(id, context) }
    end
  end
end
