class DeleteOrderedOnFromOrder < ActiveRecord::Migration[7.0]
  def change
    remove_column :orders, :ordered_on
  end
end
