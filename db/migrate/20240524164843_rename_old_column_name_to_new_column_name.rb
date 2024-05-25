class RenameOldColumnNameToNewColumnName < ActiveRecord::Migration[7.1]
  def change
    rename_column :blog_posts, :pusblished_at, :published_at
  end
end
