require "rails_helper"

RSpec.describe CardGeneratorsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/card_generators").to route_to("card_generators#index")
    end

    it "routes to #new" do
      expect(:get => "/card_generators/new").to route_to("card_generators#new")
    end

    it "routes to #show" do
      expect(:get => "/card_generators/1").to route_to("card_generators#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/card_generators/1/edit").to route_to("card_generators#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/card_generators").to route_to("card_generators#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/card_generators/1").to route_to("card_generators#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/card_generators/1").to route_to("card_generators#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/card_generators/1").to route_to("card_generators#destroy", :id => "1")
    end
  end
end
