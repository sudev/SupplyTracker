require 'rails_helper'

RSpec.describe "GoodsCommitments", type: :request do
  describe "GET /goods_commitments" do
    it "works! (now write some real specs)" do
      get goods_commitments_path
      expect(response).to have_http_status(200)
    end
  end
end
