
require_relative('lib/post')
require_relative('lib/blog')
require_relative('lib/sponsored_post')

post0 = Post.new("Monday..time to WORK!", Time.now, "Goodmorning!")
post1 = SponsoredPost.new("Another week day!", Time.now, "Feeling GOOD!")
post2 = Post.new("It is time for the excercise", Time.now, "Spinning!")
post3 = Post.new("Today I want to take it easy..", Time.now, "No MEETINGS")
post4 = Post.new("Another day in Paradise", Time.now, "Watching TV")
post5 = Post.new("Weekend yet!", Time.now, "Goodmorning!")
post6 = Post.new("Hmmm I have nothing to say.", Time.now, "Late again")
post7 = Post.new("FINALLY weekend...", Time.now, "BEACH")
post8 = Post.new("Party time!!!", Time.now, "Sabahlar olmasin")



blog = Blog.new
blog.add_post(post0)
blog.add_post(post1)
blog.add_post(post2)
blog.add_post(post3)
blog.add_post(post4)
blog.add_post(post5)
blog.add_post(post6)
blog.add_post(post7)


blog.publish_front_page
puts "\ntype 'next' or 'prev' to go around the blog"
page_input = gets.chomp

if page_input == "next"
	blog.publish_next_page
elsif page_input == "prev"
	blog.publish_prev_page
else
	puts "SYSTEM ERROR"
end









