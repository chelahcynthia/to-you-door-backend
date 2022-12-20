class UpdateCustomerPassFields < ActiveRecord::Migration[7.0]
  def change
    remove_column :customers, :password
    remove_column :customers, :password_confirmation
    add_column :customers, :password_digest, :string
  end
end
