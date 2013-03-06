class WelcomeController < ApplicationController
require 'imdb'


	def index
		examples = [
			"Back to the Future",
			"Inception",
			"Scott Pilgrim",
			"Star Wars 5",
			"The Artist",
			"Argo",
			"Groundhog Day",
			"Battle Royale",
			"Superbad",
			"Pulp Fiction",
		]
		@example = examples[rand(examples.length)]

		if params[:search]
			@video_res = yt_client.videos_by(:query => params[:search] + " trailer", :format => 5)
				
			@bf_movies = bf_client.movies.search_by_name(params[:search])
			if @bf_movies[0] 
				@bf_movie_poster = @bf_movies[0].posters.original
				@bf_scores = @bf_movies[0].scores
			end
			@plot = Imdb::Search.new(params[:search]).movies.first.plot

		end
	end

end
