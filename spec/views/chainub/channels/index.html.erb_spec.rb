require 'rails_helper'

RSpec.describe "channels/index", type: :view do
  before(:each) do
    assign(:channels, [
      Channel.create!(
        :api_key => "Api Key",
        :api_secret => "Api Secret",
        :name => "Name",
        :type => 1,
        :domain => "Domain"
      ),
      Channel.create!(
        :api_key => "Api Key",
        :api_secret => "Api Secret",
        :name => "Name",
        :type => 1,
        :domain => "Domain"
      )
    ])
  end

  it "renders a list of channels" do
    render
    assert_select "tr>td", :text => "Api Key".to_s, :count => 2
    assert_select "tr>td", :text => "Api Secret".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Domain".to_s, :count => 2
  end
end
