require "rails_helper"

module Chainub
  RSpec.describe ActionChannelsController, type: :routing do
    routes { Chainub::Engine.routes }
    describe "routing" do

      it "routes to #index" do
        expect(:get => "/action_channels").to route_to("chainub/action_channels#index")
      end

      it "routes to #new" do
        expect(:get => "/action_channels/new").to route_to("chainub/action_channels#new")
      end

      it "routes to #show" do
        expect(:get => "/action_channels/1").to route_to("chainub/action_channels#show", :id => "1")
      end

      it "routes to #edit" do
        expect(:get => "/action_channels/1/edit").to route_to("chainub/action_channels#edit", :id => "1")
      end

      it "routes to #create" do
        expect(:post => "/action_channels").to route_to("chainub/action_channels#create")
      end

      it "routes to #update" do
        expect(:put => "/action_channels/1").to route_to("chainub/action_channels#update", :id => "1")
      end

      it "routes to #destroy" do
        expect(:delete => "/action_channels/1").to route_to("chainub/action_channels#destroy", :id => "1")
      end

    end
  end
end
