require "rails_helper"
RSpec.describe "Sessions" do
  it "root path renders welcome index" do
    get root_path
    expect(response).to render_template(:'welcome/index')
  end
end
