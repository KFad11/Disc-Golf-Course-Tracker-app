require "rails_helper"

RSpec.describe CoursesController, :type => :controller do
  describe "GET index" do
    it "has a 200 status code" do
      disc_golfer = create :disc_golfer
      sign_in(disc_golfer)
      get :index
      expect(response.status).to eq(200)
    end
  end
end
