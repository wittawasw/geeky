class CreatePostTags < ActiveRecord::Migration[7.1]
  def change
    create_table :post_tags do |t|
      t.references :tag, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
