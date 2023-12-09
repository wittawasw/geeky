require "test_helper"

class PostTest < ActiveSupport::TestCase
  def setup
    @one  = posts(:one)
    @john = writers(:john)
  end

  def test_belongs_to_writer
    assert_equal @one.writer.id, @john.id
  end

  def test_body_presence_true
    @one.body = "alasladalskdalsd asldkasdlaskdlaksd"

    valid     = @one.valid?

    assert_equal valid, true
  end

  def test_body_presence_false
    [nil, ""].each do |body|
      @one.body = body

      valid     = @one.valid?
      message   = @one.errors.first.full_message

      assert_equal valid, false
      assert_equal message, "Body must have more than 100 characters"
    end
  end
end
