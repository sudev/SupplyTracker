require 'rails_helper'

RSpec.describe "ItemSubtypes", type: :request do
  describe "GET /item_subtypes" do
    it "works! (now write some real specs)" do
      get item_subtypes_path
      expect(response).to have_http_status(200)
    end
  end
end
