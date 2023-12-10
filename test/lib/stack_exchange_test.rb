require "test_helper"
require "stack_exchange"

class StackExchangeTest < Minitest::Test
  def setup
    @stack_exchange = StackExchange.new("stackoverflow", 1)
  end

  def test_questions
    VCR.use_cassette("stack_exchange.questions") do
      response = @stack_exchange.questions
      assert response.parsed_response.is_a?(Hash)
      assert_equal response.code, 200
    end
  end

  def test_users
    VCR.use_cassette("stack_exchange.users") do
      response = @stack_exchange.users
      assert response.parsed_response.is_a?(Hash)
      assert_equal response.code, 200
    end
  end
end
