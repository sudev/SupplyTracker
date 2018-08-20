require "rails_helper"

RSpec.describe ModeOfTransportsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/mode_of_transports").to route_to("mode_of_transports#index")
    end

    it "routes to #new" do
      expect(:get => "/mode_of_transports/new").to route_to("mode_of_transports#new")
    end

    it "routes to #show" do
      expect(:get => "/mode_of_transports/1").to route_to("mode_of_transports#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/mode_of_transports/1/edit").to route_to("mode_of_transports#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/mode_of_transports").to route_to("mode_of_transports#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/mode_of_transports/1").to route_to("mode_of_transports#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/mode_of_transports/1").to route_to("mode_of_transports#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mode_of_transports/1").to route_to("mode_of_transports#destroy", :id => "1")
    end
  end
end
