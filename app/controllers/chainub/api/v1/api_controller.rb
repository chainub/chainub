module Chainub::Api::V1
  class ApiController < ::ApplicationController
    def chainub_trigger
      LibChannel::ChannelTrigger.new.chainub_trigger(params)
      render json: { "success" => true }
    end
  end
end
