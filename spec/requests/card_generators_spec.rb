require 'rails_helper'

RSpec.describe "CardGenerators", type: :request do
  describe "GET /card_generators" do
    it "works! (now write some real specs)" do
      get card_generators_path
      expect(response).to have_http_status(200)
    end
  end
end
