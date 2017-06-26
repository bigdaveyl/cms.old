require 'rails_helper'

RSpec.describe "comments/show", type: :view do
  let(:myuser) { FactoryGirl.create(:user) }
  let(:mypost) { FactoryGirl.create(:post, user: myuser) }

  before(:each) do
    @comments = assign(:comment, FactoryGirl.create(:comment, post: mypost))
  end

  it "renders attributes in <p>" do
    render
  end
end
