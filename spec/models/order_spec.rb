require 'rails_helper'

RSpec.describe Order, type: :model do
  let(:order) { Order.new(firstname: "Oleh", lastname: "Bulanchuk", address: "Lisova 12/13", phone: "0967856663") }
  let(:empty_order) { Order.new }

  context  "positive validation" do
    it "is valid with a firstname, lastname, address, and phone" do
      expect(order).to be_valid
    end
  end

  context  "negative validation" do
    it "is not valid without a firstname" do
      order.firstname = nil
      expect(order).to_not be_valid
    end

    it "is not valid without a lastname" do
      order.lastname = nil
      expect(order).to_not be_valid
    end

    it "is not valid without an address" do
      order.address = nil
      expect(order).to_not be_valid
    end

    it "is not valid without a phone" do
      order.phone = nil
      expect(order).to_not be_valid
    end

    it "is not valid when empty" do
      expect(empty_order).to_not be_valid
    end
  end

end
