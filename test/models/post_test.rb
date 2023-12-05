require "test_helper"

class PostTest < ActiveSupport::TestCase
  setup do
    @post = posts(:post_0)
  end

  test "title is accessible" do
    assert_equal(@post.title, "Title_0".freeze)
  end
end
