module Api
  module V1
    class Post
      include ActiveModel::Model
      include ContentEditable

      attr_accessor :title, :body, :writer
    end
  end
end
