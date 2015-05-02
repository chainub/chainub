require 'rails_helper'

RSpec.describe "channels/new", type: :view do
  before(:each) do
    assign(:channel, Channel.new(
      :api_key => "MyString",
      :api_secret => "MyString",
      :name => "MyString",
      :type => 1,
      :domain => "MyString"
    ))
  end

  it "renders new channel form" do
    render

    assert_select "form[action=?][method=?]", channels_path, "post" do

      assert_select "input#channel_api_key[name=?]", "channel[api_key]"

      assert_select "input#channel_api_secret[name=?]", "channel[api_secret]"

      assert_select "input#channel_name[name=?]", "channel[name]"

      assert_select "input#channel_type[name=?]", "channel[type]"

      assert_select "input#channel_domain[name=?]", "channel[domain]"
    end
  end
end
