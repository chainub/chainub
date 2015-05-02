require 'rails_helper'

RSpec.describe "channels/edit", type: :view do
  before(:each) do
    @channel = assign(:channel, Channel.create!(
      :secret_key => "MyString",
      :name => "MyString",
      :channel_type => 1,
      :domain => "MyString"
    ))
  end

  it "renders the edit channel form" do
    render

    assert_select "form[action=?][method=?]", channel_path(@channel), "post" do

      assert_select "input#channel_secret_key[name=?]", "channel[secret_key]"

      assert_select "input#channel_name[name=?]", "channel[name]"

      assert_select "input#channel_channel_type[name=?]", "channel[channel_type]"

      assert_select "input#channel_domain[name=?]", "channel[domain]"
    end
  end
end
