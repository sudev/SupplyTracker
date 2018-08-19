require "rails_helper"

RSpec.describe ItemConditionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/item_conditions").to route_to("item_conditions#index")
    end

    it "routes to #new" do
      expect(:get => "/item_conditions/new").to route_to("item_conditions#new")
    end

    it "routes to #show" do
      expect(:get => "/item_conditions/1").to route_to("item_conditions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/item_conditions/1/edit").to route_to("item_conditions#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/item_conditions").to route_to("item_conditions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/item_conditions/1").to route_to("item_conditions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/item_conditions/1").to route_to("item_conditions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/item_conditions/1").to route_to("item_conditions#destroy", :id => "1")
    end
  end
end
