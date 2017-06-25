require 'rails_helper'

RSpec.describe "Home", type: :request do
  describe "GET /home/presentations" do
    it "works!" do
      get home_presentations_path
      expect(response).to have_http_status(200)
    end
  end
  describe "GET /home/index" do
    it "works!" do
      get home_index_path
      expect(response).to have_http_status(200)
    end
  end
end
