class MoviesChart

	def initialize(movies)
		@movies = movies
	end
	def print_chart
		chart_container = ""

		10.downto(1) do | i |
			@movies.each do | movie |
				if movie.rating != nil && movie.rating >= i
					chart_container += "|#"
				else
					chart_container += "| "
				end
			end
			chart_container += "|\n"
		end

		puts chart_container
	end

	def print_number
		#two ways to do it
		#1
		# @movies.each_index { | x | print "|", x+1}
		#2
		(1..@movies.length).each do |num|
			print "|#{num}"
		end
		print "|\n"
	end

	def list_movies
		@movies.each_with_index do | movie, index |
			puts "#{index+1}.#{movie.title}"
		end
	end


end