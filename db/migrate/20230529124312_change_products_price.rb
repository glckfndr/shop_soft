class ChangeProductsPrice < ActiveRecord::Migration[7.0]
  def change
    add_check_constraint :products, 'price >= 0'
    change_column :products, :price, :decimal, default: 0.0
  end
end
