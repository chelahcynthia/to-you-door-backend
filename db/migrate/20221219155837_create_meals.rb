class CreateMeals < ActiveRecord::Migration[7.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.integer :price
      t.string :category
      t.string :img_url

      t.timestamps
    end
  end
end
