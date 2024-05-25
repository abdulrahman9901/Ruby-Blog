class AddPublishedAtToBlogPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :blog_posts, :pusblished_at, :datetime
  end
end
