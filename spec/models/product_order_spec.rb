require 'rails_helper'

RSpec.describe ProductOrder, type: :model do
  let(:product) { Product.create(name: "Test Product", price: 10.99, balance: 1) }
  let(:order) { Order.create(firstname: "John", lastname: "Doe", address: "123 Main St", phone: "1234567890") }
  let(:product_order) { ProductOrder.new(product: product, order: order, amount: 2) }

  context  "positive validation" do
    it "is valid with a product, order, and amount" do
      expect(product_order).to be_valid
    end
  end

  context  "negative validation" do
    it "is not valid without a product" do
      product_order.product = nil
      expect(product_order).to_not be_valid
    end

    it "is not valid without an order" do
      product_order.order = nil
      expect(product_order).to_not be_valid
    end

    it "is not valid without a amount" do
      product_order.amount = nil
      expect(product_order).to_not be_valid
    end

    it "is not valid with a quantity less than 1" do
      product_order.amount = 0
      expect(product_order).to_not be_valid
    end
  end

end
