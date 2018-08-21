require "rails_helper"

RSpec.describe GoodsCommitmentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/goods_commitments").to route_to("goods_commitments#index")
    end

    it "routes to #new" do
      expect(:get => "/goods_commitments/new").to route_to("goods_commitments#new")
    end

    it "routes to #show" do
      expect(:get => "/goods_commitments/1").to route_to("goods_commitments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/goods_commitments/1/edit").to route_to("goods_commitments#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/goods_commitments").to route_to("goods_commitments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/goods_commitments/1").to route_to("goods_commitments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/goods_commitments/1").to route_to("goods_commitments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/goods_commitments/1").to route_to("goods_commitments#destroy", :id => "1")
    end
  end
end
