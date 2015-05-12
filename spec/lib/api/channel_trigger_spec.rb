describe "chainub_trigger" do
  include_context :basic_recipe
  let(:channel_params) {{ user_id: 1, url: 'http://yahoo.co.jp' }}
  it "channel does exist" do
    channel = Chainub::TriggerChannel.create(channel_params)
    LibChannel::ChannelTrigger.new.chainub_trigger({api_key: channel.api_key, body: "testbody", data: nil})
  end

  it "channel does not exist" do
    params = {api_key: "hogekey"}
    begin
      LibChannel::ChannelTrigger.new.chainub_trigger(params)
    rescue => e
      expect(e.message).to eq("channel does not exist")
    end
  end
end
