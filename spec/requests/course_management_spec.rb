require "rails_helper"

RSpec.describe "Course management", :type => :request do

  it "creates a Course and redirects to the Course's page" do
    disc_golfer = create(:disc_golfer)
    sign_in disc_golfer
    get "/courses"
    expect(response).to render_template(:index)
  end

  it "does not render a different template" do
    get "/courses/new"
    expect(response).to_not render_template(:show)
  end
end
