require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  let(:myuser) { FactoryBot.create(:user) }
  before(:each) do
    assign(:posts, [
      FactoryBot.create(:post, user: myuser), 
      FactoryBot.create(:post, user: myuser)
    ])
  end

  it "renders a list of posts" do
    render
  end
end
