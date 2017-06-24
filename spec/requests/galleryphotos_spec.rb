require 'rails_helper'

RSpec.describe "Galleryphotos", type: :request do
  describe "GET /galleryphotos" do
    it "works! (now write some real specs)" do
      get galleryphotos_path
      expect(response).to have_http_status(200)
    end
  end
end
