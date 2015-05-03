describe "chainub_action" do
  it "send event" do
    params = {}
    Channel::ChannelAction.new.chainub_action(params)
  end
end
