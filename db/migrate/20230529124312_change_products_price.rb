class ChangeProductsPrice < ActiveRecord::Migration[7.0]
  def change
    add_check_constraint :products, 'price >= 0', name: 'price_non_negative'
  end
end
