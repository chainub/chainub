require 'rails_helper'

RSpec.describe "channels/index", type: :view do
  before(:each) do
    assign(:channels, [
      Channel.create!(
        :secret_key => "Secret Key",
        :name => "Name",
        :channel_type => 1,
        :domain => "Domain"
      ),
      Channel.create!(
        :secret_key => "Secret Key",
        :name => "Name",
        :channel_type => 1,
        :domain => "Domain"
      )
    ])
  end

  it "renders a list of channels" do
    render
    assert_select "tr>td", :text => "Secret Key".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Domain".to_s, :count => 2
  end
end
