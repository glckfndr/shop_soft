class ChangeOrderProductsAmount < ActiveRecord::Migration[7.0]
  def change
    change_column_null :product_orders, :amount, false
    add_check_constraint :product_orders, 'amount > 0'
    change_column :product_orders, :amount, :integer, default: 0
  end
end
