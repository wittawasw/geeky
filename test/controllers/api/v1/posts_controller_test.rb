require "test_helper"

class Api::V1::PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test "should POST create successfully" do
    post api_v1_posts_url, params: {
      post: {
        body: @post.body + "adsdasdasdasd",
        title: @post.title,
        writer_id: @post.writer_id
      }
    }

    assert_response :success
  end

  test "should POST create failed" do
    post api_v1_posts_url, params: {
      post: {
        body: "a",
        title: @post.title,
        writer_id: @post.writer_id
      }
    }

    assert_response :unprocessable_entity
  end
end
