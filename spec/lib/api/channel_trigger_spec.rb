describe "chainub_trigger" do
  let(:channel_params) {{ user_id: 1, channel_type: 1, url: 'http://yahoo.co.jp' }}
  it "channel does exist" do
    channel = Chainub::Channel.create(channel_params)
    Channel::ChannelTrigger.new.chainub_trigger({api_key: channel.api_key, body: "testbody", data: nil})
  end

  it "channel does not exist" do
    params = {api_key: "hogekey"}
    begin
      Channel::ChannelTrigger.new.chainub_trigger(params)
    rescue => e
      expect(e.message).to eq("channel does not exist")
    end
  end
end
