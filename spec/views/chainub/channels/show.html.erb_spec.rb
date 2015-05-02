require 'rails_helper'

RSpec.describe "channels/show", type: :view do
  before(:each) do
    @channel = assign(:channel, Channel.create!(
      :api_key => "Api Key",
      :api_secret => "Api Secret",
      :name => "Name",
      :type => 1,
      :domain => "Domain"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Api Key/)
    expect(rendered).to match(/Api Secret/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Domain/)
  end
end
