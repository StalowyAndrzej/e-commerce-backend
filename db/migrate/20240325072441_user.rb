# frozen_string_literal: true

class User < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :api_token, null: false
      t.datetime :deleted_at
      t.string :email, null: false
      t.string :first_name
      t.string :last_name
      t.jsonb :metadata
      t.integer :role, default: 0

      t.timestamps
    end

    add_index :users, :api_token, unique: true
  end
end
