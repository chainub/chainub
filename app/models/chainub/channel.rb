module Chainub
  class Channel < ActiveRecord::Base
    before_create :set_api_key_secreet

    def set_api_key_secreet
      md5 = Digest::MD5.new.update(Time.new.to_s)
      api_key = md5.to_s
      self.api_key = api_key
      md5 = Digest::MD5.new.update('chainub' + Time.new.to_s)
      api_secret = md5.to_s
      self.api_secret = api_secret
    end

  end
end
