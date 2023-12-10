module Api
  module V1
    class Post
      include ActiveModel::Model
      include ContentEditable

      attr_accessor :title, :body, :writer_id,
                    :tags_string
    end
  end
end

# Api::V1::Post.new(title: 'asasd', body: 'asd')

