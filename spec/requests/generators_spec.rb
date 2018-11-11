require 'rails_helper'

RSpec.describe "Generators", type: :request do
  describe "GET /generators" do
    it "works! (now write some real specs)" do
      get generators_path
      expect(response).to have_http_status(200)
    end
  end
end
