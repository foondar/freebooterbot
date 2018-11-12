require "rails_helper"

RSpec.describe TableGeneratorsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/table_generators").to route_to("table_generators#index")
    end

    it "routes to #new" do
      expect(:get => "/table_generators/new").to route_to("table_generators#new")
    end

    it "routes to #show" do
      expect(:get => "/table_generators/1").to route_to("table_generators#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/table_generators/1/edit").to route_to("table_generators#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/table_generators").to route_to("table_generators#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/table_generators/1").to route_to("table_generators#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/table_generators/1").to route_to("table_generators#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/table_generators/1").to route_to("table_generators#destroy", :id => "1")
    end
  end
end
