require_dependency "chainub/application_controller"

module Chainub
  class TriggerChannelsController < ApplicationController
    before_action :set_channel, only: [:show, :edit, :update, :destroy]
    before_action :check_login, only: [:new, :create, :edit, :update, :destroy]

    # GET /channels
    def index
      @channels = TriggerChannel.all
    end

    # GET /channels/1
    def show
    end

    # GET /channels/new
    def new
      @channel = TriggerChannel.new
    end

    # GET /channels/1/edit
    def edit
    end

    # POST /channels
    def create
      @channel = TriggerChannel.new(channel_params)
      @channel.user_id = current_user.id
      if @channel.save
        redirect_to @channel, notice: 'Channel was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /channels/1
    def update
      if @channel.update(channel_params)
        redirect_to @channel, notice: 'Channel was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /channels/1
    def destroy
      @channel.destroy
      redirect_to trigger_channels_url, notice: 'Channel was successfully destroyed.'
    end

    private
      def check_login
        if !user_signed_in?
          redirect_to new_user_session_path, notice: 'you need to login'
        end
      end

      # Use callbacks to share common setup or constraints between actions.
      def set_channel
        @channel = TriggerChannel.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def channel_params
        params.require(:trigger_channel).permit(:api_key, :api_secret, :name, :description, :user_id, :url)
      end
  end
end
