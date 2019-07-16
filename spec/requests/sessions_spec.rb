require "rails_helper"
RSpec.describe "Sessions" do
  it "signs disc golfer in and out" do
    disc_golfer = create(:disc_golfer)

    sign_in disc_golfer
    get root_path
    expect(response).to render_template(:index)

    sign_out disc_golfer
    get root_path
    expect(response).not_to render_template(:show)
  end
end
