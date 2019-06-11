require 'rails_helper'

RSpec.describe Visit, type: :model do
  describe "is not valid" do
    it "without a day_visited" do
      visit = build(:visit, day_visited: nil)
      expect(visit).to_not be_valid
    end
  end
end
