require 'rails_helper'

RSpec.describe "ReliefCamps", type: :request do
  describe "GET /relief_camps" do
    it "works! (now write some real specs)" do
      get relief_camps_path
      expect(response).to have_http_status(200)
    end
  end
end
