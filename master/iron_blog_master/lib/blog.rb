require_relative("post.rb")
require 'colorize'

class Blog
	attr_reader :posts_1, :posts_2
	def initialize
		@posts_1 = []
		@posts_2 = []
	end

	def add_post(post)
		if @posts_1.length < 3
			@posts_1.push(post)
		else
			@posts_2.push(post)
		end
	end

	def publish_front_page
		puts "\n\nWelcome to The Ironhack Blog"
		puts "Use 'next' to go to the next page and 'prev' to go to the previous page.\n\n"
		sorted_posts = @posts_1.sort do |post_1, post_2|
			post_1.date <=> post_2.date
		end
		sorted_posts.each do |post|
			puts "Title: #{post.title}"
			puts "#{post.text}\n"
			puts "--------------------\n\n"
		end
		print "1".colorize(:light_blue).underline
		puts "\n2"
		input = gets.chomp
		if input == "next"
			publish_page_two
		else
			puts "Goodbye"
		end
	end

	def publish_page_two
		sorted_posts = @posts_2.sort do |post_1, post_2|
			post_1.date <=> post_2.date
		end
		sorted_posts.each do |post|
			puts "Title: #{post.title}"
			puts "#{post.text}\n"
			puts "--------------------\n\n"
		end
		print "1\n"
		puts "2".colorize(:light_blue).underline
		input = gets.chomp
		if input == 'prev'
			publish_front_page
		else
			puts "Goodbye"
		end
	end	
end