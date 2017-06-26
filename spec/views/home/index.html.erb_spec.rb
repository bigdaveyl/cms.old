require 'rails_helper'

RSpec.describe "home/index.html.erb", type: :view do
  let(:myuser) { FactoryGirl.create(:user) }
  before(:each) do
    assign(:posts, [
      FactoryGirl.create(:post, user: myuser), 
      FactoryGirl.create(:post, user: myuser)
    ])
  end

  it "loads" do
    render
  end
end
