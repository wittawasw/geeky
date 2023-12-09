require "test_helper"

class SamplesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get samples_show_url
    assert_response :success
  end
end
