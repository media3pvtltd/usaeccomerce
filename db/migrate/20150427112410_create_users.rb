class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password
      t.string :address
      t.string :phonenumber

      t.timestamps null: false
    end
  end
end
