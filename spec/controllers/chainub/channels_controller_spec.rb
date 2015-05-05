require 'rails_helper'

module Chainub
  RSpec.describe ChannelsController, type: :controller do
    describe "GET index" do
      routes { Chainub::Engine.routes }
      subject { get :index }
      it { should be_success }
    end

    describe "GET new" do
      routes { Chainub::Engine.routes }
      #include_context :login
      login_user
      subject { get :new }
      it { should be_success }
    end
  end
end
