require "rails_helper"

RSpec.describe DungeonAreasController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/dungeon_areas").to route_to("dungeon_areas#index")
    end

    it "routes to #new" do
      expect(:get => "/dungeon_areas/new").to route_to("dungeon_areas#new")
    end

    it "routes to #show" do
      expect(:get => "/dungeon_areas/1").to route_to("dungeon_areas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dungeon_areas/1/edit").to route_to("dungeon_areas#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/dungeon_areas").to route_to("dungeon_areas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dungeon_areas/1").to route_to("dungeon_areas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dungeon_areas/1").to route_to("dungeon_areas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dungeon_areas/1").to route_to("dungeon_areas#destroy", :id => "1")
    end
  end
end
