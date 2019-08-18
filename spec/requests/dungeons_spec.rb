require 'rails_helper'

RSpec.describe "Dungeons", type: :request do
  describe "GET /dungeons" do
    it "works! (now write some real specs)" do
      get dungeons_path
      expect(response).to have_http_status(200)
    end
  end
end
