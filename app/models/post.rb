class Post < ApplicationRecord
  include ContentEditable

  belongs_to :writer

  def writer_name
    writer.name
  end
end
