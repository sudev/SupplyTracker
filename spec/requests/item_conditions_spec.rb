require 'rails_helper'

RSpec.describe "ItemConditions", type: :request do
  describe "GET /item_conditions" do
    it "works! (now write some real specs)" do
      get item_conditions_path
      expect(response).to have_http_status(200)
    end
  end
end
