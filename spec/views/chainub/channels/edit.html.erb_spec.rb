require 'rails_helper'

RSpec.describe "channels/edit", type: :view do
  before(:each) do
    @channel = assign(:channel, Channel.create!(
      :api_key => "MyString",
      :api_secret => "MyString",
      :name => "MyString",
      :type => 1,
      :domain => "MyString"
    ))
  end

  it "renders the edit channel form" do
    render

    assert_select "form[action=?][method=?]", channel_path(@channel), "post" do

      assert_select "input#channel_api_key[name=?]", "channel[api_key]"

      assert_select "input#channel_api_secret[name=?]", "channel[api_secret]"

      assert_select "input#channel_name[name=?]", "channel[name]"

      assert_select "input#channel_type[name=?]", "channel[type]"

      assert_select "input#channel_domain[name=?]", "channel[domain]"
    end
  end
end
