class AddWriterToPosts < ActiveRecord::Migration[7.1]
  def change
    add_reference :posts, :writer, null: true, foreign_key: true
  end
end
