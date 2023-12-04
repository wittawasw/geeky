module PostsHelper
  def strip_and_truncate_content(content, length = 100)
    strip_tags(content).truncate(length)
  end
end
