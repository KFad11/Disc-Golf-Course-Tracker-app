require "rails_helper"

RSpec.describe "Course management", :type => :request do

  it "creates a Course and redirects to the Course's page" do
    disc_golfer = create(:disc_golfer)
    sign_in disc_golfer
    get "/courses"
    expect(response).to render_template(:index)

    post "/courses.json", :params => { :course => {:name => "Northwood Longs", :location => "Peoria, IL"} }

    body = JSON.parse(response.body)
    course = Course.last
    expect(body["id"]).to eq course.id
    expect(body["name"]).to eq course.name
  end
end
