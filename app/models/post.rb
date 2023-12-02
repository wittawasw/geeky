class Post < ApplicationRecord
  belongs_to :writer

  def display_writer
    writer.name
  end
end
