class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders, id: :uuid do |t|
      t.decimal :total, precision: 10, scale: 2
      t.integer :status, default: 0
      t.timestamps
    end
  end
end
