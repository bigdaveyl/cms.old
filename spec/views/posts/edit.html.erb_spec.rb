require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  let(:myuser) { FactoryGirl.create(:user) }
  let(:testpost) { FactoryGirl.create(:post, user: myuser) } 

  before(:each) do
    assign(:post, testpost)
    render
  end

  it "renders the edit post error if not logged in" do
    render
    #assert_select "form[action=?][method=?]", post_path(testpost), "post" 
    assert_select "form", false
  end
end
