class Post < ApplicationRecord
  belongs_to :writer

  def writer_name
    writer.name
  end
end
