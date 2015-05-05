module LibChannel
  class ChannelAction
    def chainub_action(params)
      begin
        result = Util::ApiHandler.post_api(params[:url] + '/api/v1/chainub_action', {body: params[:body], data: params[:data]})
        return result
      rescue Timeout::Error => e
        raise e
      end        
    end
  end
end
