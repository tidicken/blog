class CreateBlogNames < ActiveRecord::Migration
  def change
    create_table :blog_names do |t|
      t.text :author

      t.timestamps
    end
  end
end
