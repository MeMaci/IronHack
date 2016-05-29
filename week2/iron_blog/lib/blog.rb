# Attributes
	# Hold a collection of different posts (List of posts)

# Actions (Methods)
	# Publish(aka print) all of the posts
class Blog

	def initialize
		@posts = []
		@current_page = 1
		@post_per_page = 3
	end

	def add_post(post)
		@posts.push(post)
	end

	# def current_page
	#   	@current_page
	# end

	def publish_front_page
		puts "Please enter the page number 1 || 2 || 3."
		@current_page = gets.chomp.to_i

		first = (@current_page -1) *3
		last = (first + (@post_per_page-1))

		@posts[first..last].each do | post |
			post.display_post
		end

		# pagination_section
	end

	def publish_next_page
		last_page = (@posts.length.to_f/@post_per_page).ceil
		if @current_page == last_page
			#dont go forward
			puts "You are on the last page!"
			@current_page = @current_page+1

			first = (@current_page - 1) * 3
			last = (first + (@post_per_page -1))

			 @posts[first..last].each do | post |
				post.display_post
			end
		end	
	end

	def publish_prev_page
		if @current_page == 1
			puts "You are on the first page"
		else
			@current_page == @current_page-1

			first = (@current_page - 1) * 3
			last = (first + (@post_per_page -1))

			 @posts[first..last].each do | post |
				post.display_post
			end
		end	
	end

	# def pagination_section
	# 	pagination = ""
	# 	(1..last_page).each do | page | 
	# 		if page == @current_page
	# 			pagination += "#{page} ".colorize(:red)
	# 		else
	# 			pagination += "#{page} "
	# 		end
	# 	end
	# 	puts pagination
	# end

	# def last_page
	# 	(@posts.length / 3.0).ceil
	# end

end