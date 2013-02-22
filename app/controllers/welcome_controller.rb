class WelcomeController < ApplicationController



def index
#client = YouTubeIt::Client.new(:dev_key => YouTubeITConfig.dev_key)
	if params[:search]
		@video_res = yt_client.videos_by(:query => params[:search] + " trailer", :format => 5)
	end
end

end
