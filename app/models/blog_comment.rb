class BlogComment < ActiveRecord::Base

	belongs_to :blog_posts
end
