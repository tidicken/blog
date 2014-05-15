class CreateBlogComments < ActiveRecord::Migration
  def change
    create_table :blog_comments do |t|
      t.string :name
      t.text :comment

      t.timestamps
    end
  end
end
