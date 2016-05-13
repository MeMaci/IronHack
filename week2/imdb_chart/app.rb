require("imdb")
require_relative("lib/movies_chart")

trek_search = Imdb::Search.new("Star Trek")
diehard_search = Imdb::Search.new("Die Hard")
titanic_search = Imdb::Search.new("Titanic")
ghostbusters_search = Imdb::Search.new("Ghostbusters")
home_alone_search = Imdb

movies = []
movies.push(trek_search.movies[0])
movies.push(diehard_search.movies[0])
movies.push(titanic_search.movies[0])
movies.push(ghostbusters_search.movies[1])

	# movies.each do | movie |
	# 	puts "#{movie.title} : #{movie.rating}"
	# end
my_chart = MoviesChart.new(movies)
my_chart.print_chart
my_chart.print_number
my_chart.list_movies