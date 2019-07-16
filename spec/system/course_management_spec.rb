require "rails_helper"

RSpec.describe "Course management", :type => :system do
  before do
    driven_by(:rack_test)
  end

  it "enables me to create courses" do
    disc_golfer = create(:disc_golfer)
    sign_in disc_golfer
    visit "/courses"

    fill_in "Name", :with => "Eureka Lake Temp"
    fill_in "Location", :with => "Peoria, IL"
    click_button "Create Course"
    expect(page).to have_content "Baskets"
  end
end
