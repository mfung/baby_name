require 'rails_helper'

RSpec.describe "Top100s", type: :request do

  describe "GET /show" do
    it "returns http success" do
      get "/top100/show"
      expect(response).to have_http_status(:success)
    end
  end

end
