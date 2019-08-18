require "rails_helper"

RSpec.describe DungeonsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/dungeons").to route_to("dungeons#index")
    end

    it "routes to #new" do
      expect(:get => "/dungeons/new").to route_to("dungeons#new")
    end

    it "routes to #show" do
      expect(:get => "/dungeons/1").to route_to("dungeons#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dungeons/1/edit").to route_to("dungeons#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/dungeons").to route_to("dungeons#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dungeons/1").to route_to("dungeons#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dungeons/1").to route_to("dungeons#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dungeons/1").to route_to("dungeons#destroy", :id => "1")
    end
  end
end
