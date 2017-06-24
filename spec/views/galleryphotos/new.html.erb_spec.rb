require 'rails_helper'

RSpec.describe "galleryphotos/new", type: :view do
  before(:each) do
    assign(:galleryphoto, Galleryphoto.new())
  end

  it "renders new galleryphoto form" do
    render

    assert_select "form[action=?][method=?]", galleryphotos_path, "post" do
    end
  end
end
