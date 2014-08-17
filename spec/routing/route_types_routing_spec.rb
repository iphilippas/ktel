require "rails_helper"

RSpec.describe RouteTypesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/route_types").to route_to("route_types#index")
    end

    it "routes to #new" do
      expect(:get => "/route_types/new").to route_to("route_types#new")
    end

    it "routes to #show" do
      expect(:get => "/route_types/1").to route_to("route_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/route_types/1/edit").to route_to("route_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/route_types").to route_to("route_types#create")
    end

    it "routes to #update" do
      expect(:put => "/route_types/1").to route_to("route_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/route_types/1").to route_to("route_types#destroy", :id => "1")
    end

  end
end
