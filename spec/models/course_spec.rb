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

  it "has many visits" do
    course = build(:course)
    # disc_golfer = build(:disc_golfer)
    visit = build(:visit)
    expect(course.visits.first).to eq(visit)
  end

  it "has many disc_golfers through visits" do
    course = build(:course, name: nil, location: nil)
    kyle = build(:disc_golfer)
    skai = build(:disc_golfer)
    course.disc_golfers << [kyle, skai]

    expect(course.disc_golfers.first).to eq(kyle)
    expect(course.disc_golfers.last).to eq(skai)
  end
end
