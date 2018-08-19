require 'rails_helper'

RSpec.describe "RequiredItems", type: :request do
  describe "GET /required_items" do
    it "works! (now write some real specs)" do
      get required_items_path
      expect(response).to have_http_status(200)
    end
  end
end
