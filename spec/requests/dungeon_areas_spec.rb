require 'rails_helper'

RSpec.describe "DungeonAreas", type: :request do
  describe "GET /dungeon_areas" do
    it "works! (now write some real specs)" do
      get dungeon_areas_path
      expect(response).to have_http_status(200)
    end
  end
end
