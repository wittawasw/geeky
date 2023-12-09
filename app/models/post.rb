class Post < ApplicationRecord
  include ContentEditable

  belongs_to :writer

  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags

  def writer_name
    writer.name
  end

  def tags_string
    tags.pluck(:name)
        .join(', ')
  end

  def tags_string=(value)
    # value = "game, Movie"
    words = value.split(',')
                 .map {|s| s.strip.downcase}

    tags.delete_all

    # ['game', 'movie']
    # existing_tags = tags.pluck(:name)
    # words = words - existing_tags # []

    # ['game', 'movie']
    words.each do |word|
      tag = Tag.find_or_create_by(name: word)

      tags << tag
    end
  end

  # Post.joins(:writer).where('writers.id' => 2)
  # Post.joins(:writer).group('writers.id')
  # Post.joins(:tags).group('tags.name')
  # Post.joins(:tags).group('tags.name').count
end


# tags -> game, movie, drama
# posts -> post_tags -> tags
# tags -> post_tags -> posts

# bundle exec rails g model tag name:string
# bundle exec rails g model post_tag tag:references post:references
