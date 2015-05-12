module Chainub
  class Recipe < ActiveRecord::Base
    belongs_to :users
    has_many :action_channels
    has_many :trigger_channels
  end
end
