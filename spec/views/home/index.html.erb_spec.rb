require 'rails_helper'

RSpec.describe "home/index.html.erb", type: :view do
  let(:myuser) { FactoryBot.create(:user) }
  before(:each) do
    assign(:posts, [
      FactoryBot.create(:post, user: myuser), 
      FactoryBot.create(:post, user: myuser)
    ])
  end

  it "loads" do
    render
  end
end
