class WelcomeController < ApplicationController



def index
#client = YouTubeIt::Client.new(:dev_key => YouTubeITConfig.dev_key)
	if params[:search]
		@video_res = yt_client.videos_by(:query => params[:search] + " trailer", :format => 5)
			
		@bf_movie_poster = bf_client.movies.search_by_name(params[:search])[0].posters.original

	end
end

end
