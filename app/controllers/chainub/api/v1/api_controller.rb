module Chainub::Api::V1
  class ApiController < ::ApplicationController
    def chainub_trigger
      render json: { "message" => "hogehogehoge" }
    end
  end
end
