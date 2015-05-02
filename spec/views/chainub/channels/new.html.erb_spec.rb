require 'rails_helper'

RSpec.describe "channels/new", type: :view do
  before(:each) do
    assign(:channel, Channel.new(
      :secret_key => "MyString",
      :name => "MyString",
      :channel_type => 1,
      :domain => "MyString"
    ))
  end

  it "renders new channel form" do
    render

    assert_select "form[action=?][method=?]", channels_path, "post" do

      assert_select "input#channel_secret_key[name=?]", "channel[secret_key]"

      assert_select "input#channel_name[name=?]", "channel[name]"

      assert_select "input#channel_channel_type[name=?]", "channel[channel_type]"

      assert_select "input#channel_domain[name=?]", "channel[domain]"
    end
  end
end
