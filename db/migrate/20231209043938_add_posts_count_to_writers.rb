class AddPostsCountToWriters < ActiveRecord::Migration[7.1]
  def change
    add_column :writers, :posts_count, :integer
  end
end
