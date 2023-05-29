class ChangeProductsBalance < ActiveRecord::Migration[7.0]
  def change
    add_check_constraint :products, 'balance >= 0', name: 'balance_non_negative'
  end
end
