class AddColumnToCarts < ActiveRecord::Migration
  def change
    add_column :carts, :price, :integer
  end
end
