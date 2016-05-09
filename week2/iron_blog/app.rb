
require_relative('lib/post')
require_relative('lib/blog')
require_relative('lib/sponsored_post')

post = Post.new("This is my first post", Time.now, "Some cool content")
post1 = SponsoredPost.new("This is my second post", Time.now, "Another cool content")
post2 = Post.new("This is my third post", Time.now, "Coolest content")
post3 = Post.new("This is my 4th post", Time.now, "Coolest content")
post4 = Post.new("This is my 5th post", Time.now, "Coolest content")
post5 = Post.new("This is my 6th post", Time.now, "Coolest content")
post6 = Post.new("This is my 7th post", Time.now, "Coolest content")
post7 = Post.new("This is my 8th post", Time.now, "Coolest content")
post8 = Post.new("This is my 9th post", Time.now, "Coolest content")



blog = Blog.new(3)
blog.add_post(post)
blog.add_post(post1)
blog.add_post(post2)
blog.add_post(post3)
blog.add_post(post4)
blog.add_post(post5)
blog.add_post(post6)
blog.add_post(post7)


# posts = [post, post1, post2]

# Print one post
# puts post.display_posts
blog.publish_blog
sleep(5)
blog.next_page








