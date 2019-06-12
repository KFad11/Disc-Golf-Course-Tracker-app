require 'rails_helper'

RSpec.describe Visit, type: :model do
  it "is valid with a disc_golfer_id and a course_id" do
    visit = build(:visit)
    expect(visit).to be_valid
  end

  it "belongs to one course" do
    visit = build(:visit)
    course = build(:course)
    expect(visit.course).to eq(course)
  end

  it "belongs to one disc_golfer" do
    visit = build(:visit)
    course = build(:course)
    disc_golfer = build(:disc_golfer)
    expect(visit.disc_golfer).to eq(disc_golfer)
  end
end
