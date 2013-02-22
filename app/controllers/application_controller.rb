class ApplicationController < ActionController::Base
  protect_from_forgery
  require 'youtube_it'
  require 'badfruit'

  helper_method :yt_client

 	private
    def yt_client
    	@yt_client ||= YouTubeIt::Client.new(:dev_key => Figleaf::Settings.youtube_it["yt_dev_key"])
    end

    private
    def bf_client
    	@bf_client ||= BadFruit.new(Figleaf::Settings.badfruit["bf_dev_key"])
    end

end
