class MovieTerm

	def initialize(keyword)
		@keyword = keyword
		# @ninemovies =[]
	end

    def search
        @searching = Imdb::Search.new(@keyword)
        @array = @searching.movies
        @array.take(20)
        # @array.each do | movies |
        #     if !movies.poster.nil?
        #         @ninemovies.push(movies)
        #     end
        # end
        # @ninemovies
    end

end