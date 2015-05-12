module LibChannel
  class ChannelTrigger
    def chainub_trigger(params)
      channels = Chainub::TriggerChannel.where(api_key: params[:api_key])
      if channels.length == 0
        raise LibChannel::NoChannelError
      end 
      channel = channels[0]
      ChannelAction.new.chainub_action({url: channel.url, body: params[:body], data: params[:data]})
    end
  end
end
