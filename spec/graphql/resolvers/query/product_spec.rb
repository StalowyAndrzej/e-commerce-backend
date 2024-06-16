require 'rails_helper'

RSpec.describe Resolvers::Query::Product do
  let!(:product) { create(:product) }

  describe '#resolve' do
    it 'returns a product by id' do
      query = <<-GRAPHQL
        query($id: String!) {
          product(id: $id) {
            id
            name
            description
            price
            image
          }
        }
      GRAPHQL

      result = ECommerceBackendSchema.execute(query, variables: { id: product.id.to_s }).as_json

      data = result.dig('data', 'product')

      expect(data['id']).to eq(product.id.to_s)
      expect(data['name']).to eq(product.name)
      expect(data['description']).to eq(product.description)
      expect(data['price']).to eq(product.price)
      expect(data['image']).to eq(product.image)
    end

    it 'returns nil if product is not found' do
      query = <<-GRAPHQL
        query($id: String!) {
          product(id: $id) {
            id
            name
            description
            price
            image
          }
        }
      GRAPHQL

      result = ECommerceBackendSchema.execute(query, variables: { id: 'non-existent-id' }).as_json

      data = result.dig('data', 'product')

      expect(data).to be_nil
    end
  end
end
