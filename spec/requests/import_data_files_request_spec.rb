require 'rails_helper'

RSpec.describe "ImportDataFiles", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/import_data_files/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/import_data_files/new"
      expect(response).to have_http_status(:success)
    end
  end

end
