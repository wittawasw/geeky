require 'test_helper'

class PostsHelperTest < ActionView::TestCase
  include PostsHelper

  test 'strip_and_truncate_content removes HTML tags and truncates content' do
    post_content = "<p>This is <em>some</em> content with <strong>HTML</strong> tags.</p>"
    expected_output = "This is some content with HTML tags."

    assert_equal expected_output, strip_and_truncate_content(post_content, 50)
  end
end
