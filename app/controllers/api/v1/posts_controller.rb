class Api::V1::PostsController < ApplicationController
  def create
    post_params = params[:post].as_json

    post = Api::V1::Post.new(post_params)

    if post.valid?
      # CreatePostJob.perform_later
      render json: {}, status: 200
    else
      render json: {}, status: 422
    end
  end
end
