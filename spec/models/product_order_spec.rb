require 'rails_helper'

RSpec.describe ProductOrder, type: :model do
 
    it "is not valid without a product_id" do
      order = ProductOrder.new(order_id: 1, amount: 10)
      expect(order).to_not be_valid
    end
  
    it "is not valid without an order_id" do
      order = ProductOrder.new(product_id: 1, amount: 10)
      expect(order).to_not be_valid
    end
  
    it "is not valid without an amount" do
      order = ProductOrder.new(order_id: 1, product_id: 2)
      expect(order).to_not be_valid
    end
  
    it 'is invalid with a negative amount' do
      product = ProductOrder.new(order_id: 1, product_id: 2, amount: -1)
      expect(product).to_not be_valid
      expect(product.errors[:amount]).to include("must be greater than or equal to 0")
    end
end
