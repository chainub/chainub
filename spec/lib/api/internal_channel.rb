describe "chainub_action" do
  it "send event" do
    params = {url: 'http://yahoo.co.jp', body: 'hogehoge', data: nil}
    result = LibChannel::ChannelAction.new.chainub_action(params)
    expect(result.code).to eq("301")
  end
end
