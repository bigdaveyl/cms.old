require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  let(:myuser) { FactoryGirl.create(:user) }

  before(:each) do
    assign(:post, FactoryGirl.create(:post, user: myuser))
  end

  it "renders new post error if not logged in" do
    render

    #assert_select "form[action=?][method=?]", posts_path, "post"
    assert_select "form", false
  end
end
