require "rails_helper"

RSpec.describe MessagesController, type: :routing do
  describe "routing" do

    it "routes to #new" do
      expect(:get => "/messages/new").to route_to("messages#new")
    end
  end
end
