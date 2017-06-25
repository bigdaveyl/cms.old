require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  let(:myuser) { FactoryGirl.create(:user) }
  before(:each) do
    @post = assign(:post, FactoryGirl.create(:post, user: myuser))
  end

  it "renders attributes in <p>" do
    render
  end
end
