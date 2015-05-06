require "rails_helper"

module Chainub
  RSpec.describe ChannelsController, type: :routing do
    routes { Chainub::Engine.routes }
    describe "routing" do

      it "routes to #index" do
        expect(:get => "/channels").to route_to("chainub/channels#index")
      end

      it "routes to #new" do
        expect(:get => "/channels/new").to route_to("chainub/channels#new")
      end

      it "routes to #show" do
        expect(:get => "/channels/1").to route_to("chainub/channels#show", :id => "1")
      end

      it "routes to #edit" do
        expect(:get => "/channels/1/edit").to route_to("chainub/channels#edit", :id => "1")
      end

      it "routes to #create" do
        expect(:post => "/channels").to route_to("chainub/channels#create")
      end

      it "routes to #update" do
        expect(:put => "/channels/1").to route_to("chainub/channels#update", :id => "1")
      end

      it "routes to #destroy" do
        expect(:delete => "/channels/1").to route_to("chainub/channels#destroy", :id => "1")
      end

    end
  end
end
