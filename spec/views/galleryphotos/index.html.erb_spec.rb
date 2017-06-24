require 'rails_helper'

RSpec.describe "galleryphotos/index", type: :view do
  before(:each) do
    assign(:galleryphotos, [
      Galleryphoto.create!(),
      Galleryphoto.create!()
    ])
  end

  it "renders a list of galleryphotos" do
    render
  end
end
