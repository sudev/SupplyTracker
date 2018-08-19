require "rails_helper"

RSpec.describe ShippedItemsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/shipped_items").to route_to("shipped_items#index")
    end

    it "routes to #new" do
      expect(:get => "/shipped_items/new").to route_to("shipped_items#new")
    end

    it "routes to #show" do
      expect(:get => "/shipped_items/1").to route_to("shipped_items#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/shipped_items/1/edit").to route_to("shipped_items#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/shipped_items").to route_to("shipped_items#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/shipped_items/1").to route_to("shipped_items#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/shipped_items/1").to route_to("shipped_items#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/shipped_items/1").to route_to("shipped_items#destroy", :id => "1")
    end
  end
end
