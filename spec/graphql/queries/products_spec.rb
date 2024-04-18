# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Products query' do
  let(:product) { create(:product) }

  it 'retrives a list of available products' do
    <<~QUERY
      query {
        products {
        name
        description#{' '}
        price
        image
          }
          }
    QUERY
  end
end
