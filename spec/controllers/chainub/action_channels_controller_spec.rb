require 'rails_helper'

module Chainub
  RSpec.describe ActionChannelsController, type: :controller do
    describe "GET index" do
      routes { Chainub::Engine.routes }
      subject { get :index }
      it { should be_success }
    end

    describe "GET new" do
      routes { Chainub::Engine.routes }
      login_user
      subject { get :new }
      it { should be_success }
    end
  end
end
