class Post < ApplicationRecord
  include ContentEditable

  # counter_cache column: :posts_count
  # usage:
  # reset_counter: Writer.reset_counters(id, :posts_count)
  belongs_to :writer, counter_cache: :posts_count, touch: true
  # posts_count
  # bundle exec rails g migration AddPostsCountToWriters posts_count:integer
  # Writer.reset_counters(id, :posts_count)

  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags

  # after_initialize :assign_default_title

  # def assign_default_title
  #   self.title = 'untitled'
  # end
  # before_save
  # before_create
  # before_update
  # after_save
  # after_create
  # after_update

  # before_save :prepend_title

  # def prepend_title
  #   self.title = "Saved: #{title}"
  # end
  # after_create_commit :broadcast_prepend_to_posts

  # def broadcast_prepend_to_posts
  #   broadcast_prepend_to(
  #     "posts_list",
  #     partial: "posts/post_card",
  #     locals: { post: self },
  #     target: "posts"
  #   )
  # end

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
