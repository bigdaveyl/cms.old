require 'rails_helper'

RSpec.describe "galleryphotos/edit", type: :view do
  before(:each) do
    @galleryphoto = assign(:galleryphoto, Galleryphoto.create!())
  end

  it "renders the edit galleryphoto form" do
    render

    assert_select "form[action=?][method=?]", galleryphoto_path(@galleryphoto), "post" do
    end
  end
end
