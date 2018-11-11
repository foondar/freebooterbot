require "rails_helper"

RSpec.describe GeneratorsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/generators").to route_to("generators#index")
    end

    it "routes to #new" do
      expect(:get => "/generators/new").to route_to("generators#new")
    end

    it "routes to #show" do
      expect(:get => "/generators/1").to route_to("generators#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/generators/1/edit").to route_to("generators#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/generators").to route_to("generators#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/generators/1").to route_to("generators#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/generators/1").to route_to("generators#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/generators/1").to route_to("generators#destroy", :id => "1")
    end
  end
end
