class MovieTerm

	def initialize(keyword)
		@keyword = keyword
		@ninemovies =[]
	end

    def search
        @searching = Imdb::Search.new(@keyword)
        @array = @searching.movies
        @selection = @array.take(20)
        @selection.each do | movie |
        	if movie.poster
        		@ninemovies.push(movie)
        	end
        end
        @ninemovies[0..8]
    end

end

	# <!-- 	<% if !movie.poster.nil? %>
	#     <% @ninemovies.push(movie) %>
	#     <% end %> -->