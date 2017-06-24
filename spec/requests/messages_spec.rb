require 'rails_helper'

RSpec.describe "Messages", type: :request do
  describe "GET /contact" do
    it "works! (now write some real specs)" do
      get contact_path
      expect(response).to have_http_status(200)
    end
  end
end
