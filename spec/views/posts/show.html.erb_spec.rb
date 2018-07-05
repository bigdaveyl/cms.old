require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  let(:myuser) { FactoryBot.create(:user) }
  before(:each) do
    @post = assign(:post, FactoryBot.create(:post, user: myuser))
  end

  it "renders attributes in <p>" do
    render
  end
end
