require "test_helper"

class TagTest < ActiveSupport::TestCase
  def setup
    @one = tags(:one)
  end

  def test_has_many_posts
    assert_equal @one.posts.count, 1
  end

  def test_tag_destroy
    @one.destroy

    assert_equal @one.persisted?, false
  end
end
