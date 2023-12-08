class Writer < ApplicationRecord
  has_many :posts, dependent: :destroy

  class << self
    # Writer.select_lists
    def select_lists
      all.map do |writer|
        [writer.name, writer.id]
      end
    end
  end

  validates :name, uniqueness: true
end
