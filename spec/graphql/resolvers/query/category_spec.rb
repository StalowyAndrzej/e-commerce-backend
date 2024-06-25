require 'rails_helper'

RSpec.describe Resolvers::Query::Category do
  let!(:category) { create(:category) }

  describe '#resolve' do
    it 'returns a category by id' do
      query = <<-GRAPHQL
        query($id: String!) {
          category(id: $id) {
            id
            name
            description
            isActive
            createdAt
            updatedAt
          }
        }
      GRAPHQL

      result = ECommerceBackendSchema.execute(query, variables: { id: category.id.to_s }).as_json

      data = result.dig('data', 'category')

      expect(data['id']).to eq(category.id.to_s)
      expect(data['name']).to eq(category.name)
      expect(data['description']).to eq(category.description)
      expect(data['isActive']).to eq(category.is_active)
      expect(data['createdAt']).to eq(category.created_at.iso8601)
      expect(data['updatedAt']).to eq(category.updated_at.iso8601)
    end

    it 'returns nil if category is not found' do
      query = <<-GRAPHQL
        query($id: String!) {
          category(id: $id) {
            id
            name
            description
            isActive
            createdAt
            updatedAt
          }
        }
      GRAPHQL

      result = ECommerceBackendSchema.execute(query, variables: { id: 'non-existent-id' }).as_json

      data = result.dig('data', 'category')

      expect(data).to be_nil
    end
  end
end
