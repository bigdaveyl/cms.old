require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe "GET #index" do
    it "returns http successful" do
      get :index
      expect(response).to have_http_status(:successful)
    end
  end
end
