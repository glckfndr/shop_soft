class Product < ApplicationRecord
    validates :name, :balance, presence: true
    validates :price, :balance, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
