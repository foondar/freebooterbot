require 'rails_helper'

RSpec.describe "TableGenerators", type: :request do
  describe "GET /table_generators" do
    it "works! (now write some real specs)" do
      get table_generators_path
      expect(response).to have_http_status(200)
    end
  end
end
