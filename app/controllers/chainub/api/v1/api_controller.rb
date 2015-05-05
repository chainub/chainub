module Chainub::Api::V1
  class ApiController < ::ApplicationController
    def chainub_trigger
      params = {}
      LibChannel::ChannelTrigger.new.chainub_trigger(params)
      render json: { "success" => true }
    end
  end
end
