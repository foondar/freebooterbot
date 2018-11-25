require "rails_helper"

RSpec.describe DungeonTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/dungeon_types").to route_to("dungeon_types#index")
    end

    it "routes to #new" do
      expect(:get => "/dungeon_types/new").to route_to("dungeon_types#new")
    end

    it "routes to #show" do
      expect(:get => "/dungeon_types/1").to route_to("dungeon_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dungeon_types/1/edit").to route_to("dungeon_types#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/dungeon_types").to route_to("dungeon_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dungeon_types/1").to route_to("dungeon_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dungeon_types/1").to route_to("dungeon_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dungeon_types/1").to route_to("dungeon_types#destroy", :id => "1")
    end
  end
end
