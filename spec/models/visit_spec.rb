require 'rails_helper'

RSpec.describe Visit, type: :model do
  it "is valid with a disc_golfer_id and a course_id" do
    visit = build(:visit)
    expect(visit).to be_valid
  end

  it "belongs to one course" do
    course = build(:course)
    visit = build(:visit, course: course)
    expect(visit.course).to eq(course)
  end

  it "belongs to one disc_golfer" do
    disc_golfer = create(:disc_golfer)
    visit = create(:visit, disc_golfer: disc_golfer)
    expect(visit.disc_golfer).to eq(disc_golfer)
  end
end
