class Writer < ApplicationRecord
  # searchkick searchable: [:name]

  has_many :posts, dependent: :destroy

  validates :name, uniqueness: true
  # def valid? -> errors.empty?
  # add -> error -> errors

  class << self
    # Writer.select_lists
    def select_lists
      all.map do |writer|
        [writer.name, writer.id]
      end
    end
  end
end
