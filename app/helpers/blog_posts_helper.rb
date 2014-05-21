module BlogPostsHelper

	def update_num_comments(blogpost_id)
 #this accounts for adding, deleting, and updating a comment
		blog_post = BlogPost.find(blogpost_id)

		num_comments = blogpost_id.comments.count

		blog_post.num_comments = num_comments

		blog_post.save

	end
end
