# frozen_string_literal: true

class CreateCollections < ActiveRecord::Migration[7.1]
  def change
    create_table :collections do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
