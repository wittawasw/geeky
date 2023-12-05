module PostsHelper
  def tag_pills(tags_string)
    tags_string.split(',')
               .map { |tag| "<div class='pill'>#{tag}</div>" }
               .join('')
               .html_safe
  end
end
