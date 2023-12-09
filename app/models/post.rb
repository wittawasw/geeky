class Post < ApplicationRecord
  include ContentEditable

  belongs_to :writer

  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags

  def writer_name
    writer.name
  end
end


# tags -> game, movie, drama
# posts -> post_tags -> tags
# tags -> post_tags -> posts

# bundle exec rails g model tag name:string
# bundle exec rails g model post_tag tag:references post:references
