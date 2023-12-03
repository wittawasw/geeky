class Post < ApplicationRecord
  belongs_to :writer, optional: true
  # , counter_cache: true

  # aggregation
  # Post.joins(:write).group("writer.name")

  # Post.eager_load(:writer).all.each { |post| puts post.writer.name }

  # Post.map {|post| post.title}

  # Post.where(writer_id: nil)
  #     .pluck(:title, :id)
  #     .map {|title, id| {id => title}}
  #     .reduce(&:merge)
  # Post.where(writer_id: nil).map { |post| post.id }
  # Post.where(writer_id: nil).map(&:id)


  has_many :post_tags
  has_many :tags, through: :post_tags

  # Post.no_writer
  # default_scope  -> { where(writer_id: nil) }
  # scope :no_writer, -> { where(writer_id: nil) }

  # before_create
  # before_save
  # after_create
  # after_save

  after_save :update_counter_cache

  def update_counter_cache
    writer.posts_count = writer.posts.count
    writer.save
  end

  def display_writer
    # return "" if writer.nil?

    writer&.name
  end

  def tags_string=(value)
    # "tag1, tag2, tag3"
    value.split(",").each do |tag_string|
      self.tags.find_or_initialize_by(name: tag_string.strip.downcase)
    end
  end

  def tags_string
    tags.map { |t| t.name }
        .join(', ')
  end
end

# create tags table
# create post_tags table
# post_tags references -> posts, tags
# has_many through

# has_many :post_tags
# has_many :posts, through: :post_tags

# bundle exec rails g model tag name:string
# bundle exec rails g model post_tag tag:references post:references
# bundle exec rails console
# Post.first.tags

# post = Post.first || Post.find(1)
# post.tags.create(name: "name")
# post.save
