require 'rails_helper'

RSpec.describe "channels/show", type: :view do
  before(:each) do
    @channel = assign(:channel, Channel.create!(
      :secret_key => "Secret Key",
      :name => "Name",
      :channel_type => 1,
      :domain => "Domain"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Secret Key/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Domain/)
  end
end
