module ContentEditable
  extend ActiveSupport::Concern

  included do
    validate :body_more_than_10

    def body_more_than_10
      if body.nil? || body.length < 10
        errors.add(:body, "must have more than 100 characters")
      end
    end
  end

  class_methods do
  end
end
