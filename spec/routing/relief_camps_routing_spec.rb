require "rails_helper"

RSpec.describe ReliefCampsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/relief_camps").to route_to("relief_camps#index")
    end

    it "routes to #new" do
      expect(:get => "/relief_camps/new").to route_to("relief_camps#new")
    end

    it "routes to #show" do
      expect(:get => "/relief_camps/1").to route_to("relief_camps#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/relief_camps/1/edit").to route_to("relief_camps#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/relief_camps").to route_to("relief_camps#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/relief_camps/1").to route_to("relief_camps#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/relief_camps/1").to route_to("relief_camps#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/relief_camps/1").to route_to("relief_camps#destroy", :id => "1")
    end
  end
end
