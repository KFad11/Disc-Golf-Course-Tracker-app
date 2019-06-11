require 'rails_helper'

RSpec.describe Course, type: :model do
  describe "is not valid" do
    it "without a name" do
      course = build(:course, name: nil)
      expect(course).to_not be_valid
    end

    it "without a location" do
      course = build(:course, location: nil)
      expect(course).to_not be_valid
    end
  end
end
