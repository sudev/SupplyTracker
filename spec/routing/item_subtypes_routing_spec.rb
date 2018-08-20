require "rails_helper"

RSpec.describe ItemSubtypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/item_subtypes").to route_to("item_subtypes#index")
    end

    it "routes to #new" do
      expect(:get => "/item_subtypes/new").to route_to("item_subtypes#new")
    end

    it "routes to #show" do
      expect(:get => "/item_subtypes/1").to route_to("item_subtypes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/item_subtypes/1/edit").to route_to("item_subtypes#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/item_subtypes").to route_to("item_subtypes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/item_subtypes/1").to route_to("item_subtypes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/item_subtypes/1").to route_to("item_subtypes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/item_subtypes/1").to route_to("item_subtypes#destroy", :id => "1")
    end
  end
end
