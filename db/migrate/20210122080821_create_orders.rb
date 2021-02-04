class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :product_name
      t.decimal :price, precision: 10, scale: 2, default: 0.0
      t.boolean :shipped, default: false

      t.timestamps
    end
  end
end
