require 'rails_helper'

RSpec.describe "messages/new", type: :view do
  before(:each) do
    assign(:message, Message.new(name: "my name", email: "blah@blah.com", content: "This is a test message"))
  end

  it "renders new message form" do
    render
    assert_select "form[action=?][accept-charset=?][method=?]", contact_path, "UTF-8", "post" do
    end
  end
end
