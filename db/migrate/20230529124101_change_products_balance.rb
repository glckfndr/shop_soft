class ChangeProductsBalance < ActiveRecord::Migration[7.0]
  def change
    add_check_constraint :products, 'balance >= 0'
    change_column :products, :balance, :integer, default: 0
  end
end
