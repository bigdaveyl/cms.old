require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  let(:myuser) { FactoryGirl.create(:user) }
  before(:each) do
    assign(:posts, [
      FactoryGirl.create(:post, user: myuser), 
      FactoryGirl.create(:post, user: myuser)
    ])
  end

  it "renders a list of posts" do
    render
  end
end
