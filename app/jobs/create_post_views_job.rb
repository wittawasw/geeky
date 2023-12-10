class CreatePostViewsJob < ApplicationJob
  queue_as :low

  def perform(post_id:)
    set_post(post_id)
    create_view
  end

  private

  def set_post(id)
    @post = Post.find(id)
  end

  def create_view
    @post.views.create
  end
end
