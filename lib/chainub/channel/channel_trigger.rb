module Channel
  class ChannelTrigger
    def chainub_trigger(params)
      channels = Chainub::Channel.where(api_key: params[:api_key])
      if channels.length == 0
        raise Channel::NoChannelError
      end 
      channel = channels[0]
      ChannelAction.new.chainub_action({url: channel.url, body: params[:body], data: params[:data]})
    end
  end
end
