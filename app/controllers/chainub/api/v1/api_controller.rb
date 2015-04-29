module Chainub::Api::V1
  class ApiController < ::ApplicationController
    def chainub_trigger
      params = {}
      Channel::ChannelTrigger.new.chainub_trigger(params)
      render json: { "success" => true }
    end
  end
end
