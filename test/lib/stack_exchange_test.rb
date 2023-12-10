require "test_helper"
require "stack_exchange"

class StackExchangeTest < Minitest::Test
  def setup
    @stack_exchange = StackExchange.new("stackoverflow", 1)
  end

  def test_questions
    VCR.use_cassette("questions") do
      response = @stack_exchange.questions
      assert response.parsed_response.is_a?(Hash)
      assert_equal 200, response.code
    end
  end

  def test_users
    VCR.use_cassette("users") do
      response = @stack_exchange.users
      assert response.parsed_response.is_a?(Hash)
      assert_equal 200, response.code
    end
  end
end
