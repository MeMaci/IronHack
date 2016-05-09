# Attributes
	# Hold a collection of different posts (List of posts)

# Actions (Methods)
	# Publish(aka print) all of the posts
class Blog

	def initialize(post_per_page)
		@posts = []	
		@current_page = 2
		@post_per_page = post_per_page
	end

	def add_post(apples)
		@posts.push(apples)
	end

	def publish_blog
		first = (@current_page-1)*3
		last = first + (@post_per_page-1)

		@posts[first..last].each do |x|
			x.display_posts
		end
        last_page = (@posts.length / @post_per_page).ceil
        (1..last_page).each do |num|
        	puts "#{num}"
        end

	end
	def next_page
		@current_page +=1
		publish_blog	
	end
end