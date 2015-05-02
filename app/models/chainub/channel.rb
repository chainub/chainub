module Chainub
  class Channel < ActiveRecord::Base
    before_create :set_secret_key

    def set_secret_key
      md5 = Digest::MD5.new.update(Time.new.to_s)
      secret_key = md5.to_s
      self.secret_key = secret_key
    end
  end
end
