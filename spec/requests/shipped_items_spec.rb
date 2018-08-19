require 'rails_helper'

RSpec.describe "ShippedItems", type: :request do
  describe "GET /shipped_items" do
    it "works! (now write some real specs)" do
      get shipped_items_path
      expect(response).to have_http_status(200)
    end
  end
end
