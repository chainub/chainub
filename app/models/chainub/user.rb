module Chainub
  class User < ActiveRecord::Base
    has_many :trigger_channels
    has_many :action_channels
    has_many :recipe
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable
  end
end
