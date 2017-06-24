require 'rails_helper'

RSpec.describe "galleryphotos/show", type: :view do
  before(:each) do
    @galleryphoto = assign(:galleryphoto, Galleryphoto.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
