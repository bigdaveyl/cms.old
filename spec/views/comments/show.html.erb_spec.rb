require 'rails_helper'

RSpec.describe "comments/show", type: :view do
  let(:myuser) { FactoryBot.create(:user) }
  let(:mypost) { FactoryBot.create(:post, user: myuser) }

  before(:each) do
    @comments = assign(:comment, FactoryBot.create(:comment, post: mypost))
  end

  it "renders attributes in <p>" do
    render
  end
end
