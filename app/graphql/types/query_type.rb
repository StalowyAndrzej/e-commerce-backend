# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :node, Types::NodeType, null: true, description: "Fetches an
  object given its ID." do
      argument :id, ID, required: true, description: 'ID of the object.'
    end

    field :nodes, [Types::NodeType, { null: true }], null: true, description:
      'Fetches a list of objects given a list of IDs.' do
      argument :ids, [ID], required: true, description: "IDs of the
  objects."
    end

    field :product, ProductType, null: false, description: 'Fetch a product given its ID' do
      argument :id, ID, required: true
    end

    def node(id:)
      context.schema.object_from_id(id, context)
    end

    def nodes(ids:)
      ids.map { |id| context.schema.object_from_id(id, context) }
    end

    def product(id:)
      Product.find(id)
    end
  end
end
