class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.integer :customer_id
      t.integer :meal_id
      t.integer :price

      t.timestamps
    end
  end
end
