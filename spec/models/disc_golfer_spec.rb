require 'rails_helper'

RSpec.describe DiscGolfer, type: :model do
  describe "is not valid" do
    it "without a name" do
      disc_golfer = build(:disc_golfer, name: nil)
      expect(disc_golfer).to_not be_valid
    end

    it "without a password" do
      disc_golfer = build(:disc_golfer, password: nil)
      expect(disc_golfer).to_not be_valid
    end
  end
end
