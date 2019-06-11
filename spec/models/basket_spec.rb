require 'rails_helper'

RSpec.describe Basket, type: :model do
  describe "is not valid" do
    it "without a basket_number" do
      basket = build(:basket, basket_number: nil)
      expect(basket).to_not be_valid
    end

    it "without a par" do
      basket = build(:basket, par: nil)
      expect(basket).to_not be_valid
    end
  end
end
