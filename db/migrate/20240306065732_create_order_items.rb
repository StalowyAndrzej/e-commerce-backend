class CreateOrderItems < ActiveRecord::Migration[7.1]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.references :product, null: false, foreign_key: true, index: true
      t.timestamps
    end
  end
end
