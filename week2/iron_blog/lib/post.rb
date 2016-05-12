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

	def display_post
		puts "#{@title}   #{@time}" 
		puts "*"* @title.length
		puts "#{@text}"
		puts "-"* @text.length
	end
end