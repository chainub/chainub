module Channel
  class NoChannelError < StandardError
    def message
      "channel does not exist"
    end
  end
end
