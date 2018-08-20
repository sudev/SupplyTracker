require 'rails_helper'

RSpec.describe "ItemSubTypes", type: :request do
  describe "GET /item_sub_types" do
    it "works! (now write some real specs)" do
      get item_sub_types_path
      expect(response).to have_http_status(200)
    end
  end
end
