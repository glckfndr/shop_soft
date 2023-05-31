class ProductOrder < ApplicationRecord
  belongs_to :product
  belongs_to :order
  validates :amount, numericality: {only_integer: true, greater_than: 0 }
  validates :product_id, :order_id, presence: true
end
