require "rails_helper"

RSpec.describe "Disc Golfer management", :type => :system do
  before do
    driven_by(:rack_test)
  end

  it "enables me to create disc golfers" do
    visit "/disc_golfers/sign_up"

    fill_in "Email", :with => "email@email.com"
    fill_in "Name", :with => "Kyle"
    fill_in "Password", :with => "password"
    fill_in "Password confirmation", :with => "password"
    click_button "Sign up"
    expect(page).to have_content "Welcome! You have signed up successfully."
    expect(DiscGolfer.last.name).to eq "Kyle"
  end
end
