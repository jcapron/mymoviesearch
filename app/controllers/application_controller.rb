class ApplicationController < ActionController::Base
  protect_from_forgery
  require 'youtube_it'
  helper_method :yt_client

 	private
    def yt_client
    	@yt_client ||= YouTubeIt::Client.new(:dev_key => YouTubeITConfig.dev_key)
    end

end
