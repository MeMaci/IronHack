# Attributes(Title, Date, Text)
	# Title
	# Date
	# Text

# Actions (Methods)
	# Print single post


class Post
	def initialize(title, date, text)
		@title = title
		@date = date
		@text = text
	end

	def display_posts

		puts "title : #{@title}, posted on #{@date}"
		puts "-------------------------------------"	

		puts "text : #{@text}"
		puts "*************************************"	

	end
end