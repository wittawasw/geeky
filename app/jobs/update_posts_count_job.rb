class UpdatePostsCountJob < ApplicationJob
  queue_as :low

  def perform(writer_id:)
    writer = Writer.find(writer_id)

    writer.posts_count = writer.posts.count
    writer.save
  end
end
