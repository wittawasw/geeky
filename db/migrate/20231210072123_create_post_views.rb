class CreatePostViews < ActiveRecord::Migration[7.1]
  def change
    create_table :post_views do |t|
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
