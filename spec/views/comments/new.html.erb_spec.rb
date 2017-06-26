require 'rails_helper'

RSpec.describe "comments/new", type: :view do
  let(:myuser) { FactoryGirl.create(:user) }
  let(:mypost) { FactoryGirl.create(:post, user: myuser) }

  before(:each) do
    assign(:comment, FactoryGirl.create(:comment, post: mypost))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do
    end
  end
end
