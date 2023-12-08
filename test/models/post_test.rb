require "test_helper"

class PostTest < ActiveSupport::TestCase
  def setup
    @one  = posts(:one)
    @john = writers(:john)
  end

  def test_belongs_to_writer
    assert_equal @one.writer.id, @john.id
  end
end
