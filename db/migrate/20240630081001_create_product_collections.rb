class CreateProductCollections < ActiveRecord::Migration[7.1]
  def change
    create_table :product_collections do |t|
      t.references :product, null: false, foreign_key: true
      t.references :collection, null: false, foreign_key: true

      t.timestamps
    end
  end
end
