class Writer < ApplicationRecord
  include Obfuscatable

  has_many :posts
end

# integer -> naming - > posts_count
# bundle exec rails g migration AddPostsCountToWriters posts_count:integer


