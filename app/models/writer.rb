class Writer < ApplicationRecord
  has_many :posts

  class << self
    # Writer.select_lists
    def select_lists
      all.map do |writer|
        [writer.name, writer.id]
      end
    end
  end
end
