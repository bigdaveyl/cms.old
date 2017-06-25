require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  let(:myuser) { FactoryGirl.create(:user) }

  before(:each) do
    assign(:post, FactoryGirl.create(:post, user: myuser))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do
    end
  end
end
