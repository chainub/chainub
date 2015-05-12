require "rails_helper"

module Chainub
  RSpec.describe RecipesController, type: :routing do
    routes { Chainub::Engine.routes }
    describe "routing" do

      it "routes to #index" do
        expect(:get => "/recipes").to route_to("chainub/recipes#index")
      end

      it "routes to #new" do
        expect(:get => "/recipes/new").to route_to("chainub/recipes#new")
      end

      it "routes to #show" do
        expect(:get => "/recipes/1").to route_to("chainub/recipes#show", :id => "1")
      end

      it "routes to #edit" do
        expect(:get => "/recipes/1/edit").to route_to("chainub/recipes#edit", :id => "1")
      end

      it "routes to #create" do
        expect(:post => "/recipes").to route_to("chainub/recipes#create")
      end

      it "routes to #update" do
        expect(:put => "/recipes/1").to route_to("chainub/recipes#update", :id => "1")
      end

      it "routes to #destroy" do
        expect(:delete => "/recipes/1").to route_to("chainub/recipes#destroy", :id => "1")
      end

    end
  end
end
