require "rails_helper"

RSpec.describe "Basket management", :type => :system do
  before do
    driven_by(:rack_test)
  end

  it "enables me to create baskets" do
    disc_golfer = create(:disc_golfer)
    sign_in disc_golfer
    course = create(:course)
    visit course_path(course)

    fill_in "Basket number", :with => "1"
    fill_in "Par", :with => "5"
    click_button "Create Basket"
    expect(page).to have_content "1"
    expect(Basket.last.par).to eq 5
  end
end
