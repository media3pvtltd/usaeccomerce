class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :product_id
      t.string :product
      t.integer :quantity
      t.string :check

      t.timestamps null: false
    end
  end
end
