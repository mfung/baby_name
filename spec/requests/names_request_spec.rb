require 'rails_helper'

RSpec.describe "Names", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/names/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/names/show"
      expect(response).to have_http_status(:success)
    end
  end

end
