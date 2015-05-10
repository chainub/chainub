require "rails_helper"

module Chainub
  RSpec.describe TriggerChannelsController, type: :routing do
    routes { Chainub::Engine.routes }
    describe "routing" do

      it "routes to #index" do
        expect(:get => "/trigger_channels").to route_to("chainub/trigger_channels#index")
      end

      it "routes to #new" do
        expect(:get => "/trigger_channels/new").to route_to("chainub/trigger_channels#new")
      end

      it "routes to #show" do
        expect(:get => "/trigger_channels/1").to route_to("chainub/trigger_channels#show", :id => "1")
      end

      it "routes to #edit" do
        expect(:get => "/trigger_channels/1/edit").to route_to("chainub/trigger_channels#edit", :id => "1")
      end

      it "routes to #create" do
        expect(:post => "/trigger_channels").to route_to("chainub/trigger_channels#create")
      end

      it "routes to #update" do
        expect(:put => "/trigger_channels/1").to route_to("chainub/trigger_channels#update", :id => "1")
      end

      it "routes to #destroy" do
        expect(:delete => "/trigger_channels/1").to route_to("chainub/trigger_channels#destroy", :id => "1")
      end

    end
  end
end
