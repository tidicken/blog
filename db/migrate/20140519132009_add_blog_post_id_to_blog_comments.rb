class AddBlogPostIdToBlogComments < ActiveRecord::Migration
  def change
    add_column :blog_comments, :blogpost_id, :integer
  end
end
